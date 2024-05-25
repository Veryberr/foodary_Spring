/*
let foodView = {

    init: function() {

    },

    bind: function() {

        // $( document ).ready( function() {

            $( '#ajaxTable' ).on( 'click', 'tr', function() {

                let trIndex = $(this).index();
                let chkbox = $( '#ajaxTable input[type="checkbox"]' ).eq( trIndex );

                if ( chkbox.length > 0 ) {
                    chkbox.prop( 'checked', !chkbox.prop('checked') );
                }

            });

            $.ajax({
                url: "~/diet/foodListView.jsp",
                data: {
                    test: '1234',
                },
                success: function(data) {
                    console.log("Request successful:");
                    console.log(data);
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.error("AJAX Request Failed: ", textStatus, errorThrown);
                },
            });



        // });

    },

    addFood: function() {

        $( document ).ready( function() {

            console.log('가져오기 버튼');

            $('#ajaxTable').on('change', 'input[type="checkbox"]', function () {
                // 현재 체크박스의 체크 여부를 확인합니다.
                let isChecked = $(this).is(':checked').eq(0).val();

                // 체크 여부를 콘솔에 출력합니다.
                console.log('체크 여부:', isChecked);
            });

        });


    },

};
*/

 function addData() {
     var selectedRadios = document.querySelectorAll('input[name="foodName"]:checked');
     var id = document.getElementsByName("id")[0].value;

     var foodNames = [];
     var kcals = [];
     var carbss = [];
     var proteins = [];
     var fats = [];

     let foodInfo = [];
     if (selectedRadios.length > 0) {

         selectedRadios.forEach(function (selectedRadio) {
             var parentRow = selectedRadio.closest('tr');
             var idx = parentRow.querySelector('td:nth-child(1)').innerHTML.trim();
             var foodName = parentRow.querySelector('td:nth-child(2)').innerHTML.trim();
             var kcal = parentRow.querySelector('td:nth-child(3)').innerHTML.trim();
             var carbs = parentRow.querySelector('td:nth-child(4)').innerHTML.trim();
             var protein = parentRow.querySelector('td:nth-child(5)').innerHTML.trim();
             var fat = parentRow.querySelector('td:nth-child(6)').innerHTML.trim();

/*
             foodNames.push(foodName);
             kcals.push(kcal);
             carbss.push(carbs);
             proteins.push(protein);
             fats.push(fat);
*/
 /*
             let food = {
                 "idx": 0,
                 "foodName": "",
                 "kcal": 0.0,
                 "carbs": 0.0,
                 "protein": 0.0,
                 "fat": 0.0,
             };
             food.idx = idx;
             food.foodName = foodName;
             food.kcal = kcal;
             food.carbs = carbs;
             food.protein = protein;
             food.fat = fat;
*/


/*
             console.log( 'foodNames : ' + foodNames );
             console.log( 'kcals : ' + kcals );
             console.log( 'carbss : ' + carbss );
             console.log( 'proteins : ' + proteins );
             console.log( 'fats : ' + fats );
 */
             let food = [];
             food.push( idx );
             food.push( foodName );
             food.push( kcal );
             food.push( carbs );
             food.push( protein );
             food.push( fat );

            console.log( 'food : ' + food );
            foodInfo.push( food );
         });
     }
     console.log( 'foodInfo : ' + foodInfo );
//
//   for (var i = 0; i < foodNames.length; i++) {
// 	  var url = './userFoodInsert?' +
//       'foodName=' + foodNames[i] +
//       '&kcal=' + kcals[i] +
//       '&carbs=' + carbss[i] +
//       '&protein=' + proteins[i] +
//       '&fat=' + fats[i] +
//       '&id=' + id;
//     	window.location.href = url;
//   }
// //  부모 창으로 데이터 전송 후 팝업 창 닫기
//     window.close(); // 팝업 창 닫기
//     window.opener.refreshParent();
//   }



         $.ajax({
             url: "/diet/foodList",
             contentType: "application/x-www-form-urlencoded; charset=UTF-8",
             data: {
                 "foodInfo": foodInfo
             },
             success: function (data) {
                 console.log( 'data.foodInfo : ' + data );
             },
             error: function (jqXHR, textStatus, errorThrown) {
                 console.error("AJAX Request Failed: ", textStatus, errorThrown);
             },
         });

 }

window.onbeforeunload = function() {
	var url = './popupClose'
	window.location.href = url;
}

function popupClose() {
	var url = './popupClose'
	window.location.href = url;
	window.close();
}


/*
function getParameterByName(name) {
  name = name.replace(/[\[\]]/g, "\\$&");
  var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
      results = regex.exec(window.location.href);
  if (!results) return null;
  if (!results[2]) return '';
  return decodeURIComponent(results[2].replace(/\+/g, " "));
}



//ajax 검색 -- 향후 활용 가능(현재 service 활용 검색중)
const searchRequest = new XMLHttpRequest();
//ajax 검색 요청 함수
function searchFunction() {
	
	//GET 방식 요청
	let url = '../FoodSearch?foodName=' + encodeURIComponent(document.getElementById('foodName').value);
    console.log( 'document.getElementById(\'foodName\').value : ' + document.getElementById('foodName').value );
	searchRequest.open('GET' , url , true);
	//send() 함수로 서버에 요청(서블릿 호출)한다.
	searchRequest.send(null);
	// onreadystatechange를 사용해서 ajax 요청이 완료되면 자동으로 실행할 콜백 함수 이름을 지정한다. 
	searchRequest.onreadystatechange = searchProcess;
	
}

// ajax 요청이 완료되면 실행할 콜백 함수
function searchProcess() {
	//통신이 정상적으로 완료되었음을 확인하고 필요한 작업을 실행한다. 
	if (searchRequest.readyState == 4 && searchRequest.status == 200) {
		//console.log('responseText: ' + searchRequest.responseText);
		//서블릿에서 리턴된 문자열을 javascript 객체로 변환시키기 위해 괄호를 붙여서 eval()함수를
		// 실행해서 객체로 저장한다.
		let object = eval('(' + searchRequest.responseText + ')' );
		console.log(object);
		// javascript 객체에서 result 라는 key에 할당된 데이터를 얻어온다. => 화면에 출력할 데이터
		let result = object.result;
		console.log(result);
		
		//서블릿에서 수신된 데이터를 출력하기 위해 <tbody>탤그를 얻어온다. 
		let tbody = document.getElementById('ajaxTable');
		//새로 검색된 데이터가 표시되어야 하므로 이전에 <tbody>태그에 들어있던 내용은 지운다.
		tbody.innerHTML = "";
		//데이터의 개수만큼 반복하며 <tbody> 태그에 행을 만들어 추가한다.
		for(let i=0; i<result.length; i++) {
         // <tbody>에 넣어줄 행을 만든다.
         let row = tbody.insertRow(i);
         // 한 행에 출력할 열의 개수만큼 반복하며 행에 열을 추가한다.
         for(let j=0; j<result[i].length; j++) {
            // 행에 넣어줄 열을 만든다.
            let cell = row.insertCell(j);
            // 열에 화면에 표시할 데이터를 넣어준다.
            cell.innerHTML = result[i][j].value;
            console.log( 'cell.innerHTML : ' + cell.innerHTML );
         }
          // 열을 추가하여 체크박스를 포함시킨다.
		  let checkboxCell = row.insertCell(result[i].length);
		  checkboxCell.className = "text-center";
		  checkboxCell.innerHTML = "<input type='checkbox' value='선택' name='foodName'/>";
      }
	} 
}
*/