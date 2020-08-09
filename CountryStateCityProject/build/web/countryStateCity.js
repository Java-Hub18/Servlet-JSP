
// State lists
var states = new Array();

states['India'] = new Array('Maharashtra', 'New Delhi', 'Tamilnadu');
states['Australia'] = new Array('Sydney', 'Victoria', 'Queensland');
states['United States'] = new Array('California', 'Florida', 'New York');


// City lists
var cities = new Array();

cities['India'] = new Array();
cities['India']['Maharashtra'] = new Array('Mumbai', 'Pune');
cities['India']['New Delhi'] = new Array('Mustafabad', 'KishanGanj');
cities['India']['Tamilnadu'] = new Array('Chennai', 'Coimbatore');

cities['Australia'] = new Array();
cities['Australia']['Sydney'] = new Array('New South Wales', 'Dubbo');
cities['Australia']['Victoria'] = new Array('Melbourne', 'Benalla');
cities['Australia']['Queensland'] = new Array('Brisbane', 'Cairns');

cities['United States'] = new Array();
cities['United States']['California'] = new Array('Los Angeles', 'San Francisco');
cities['United States']['Florida'] = new Array('Miami', 'Orlando');
cities['United States']['New York'] = new Array('Buffalo', 'new York');


function setStates() {
    cntrySel = document.getElementById('country');//Here coutry is a id of country dropdown
    stateList = states[cntrySel.value];
    changeSelect('state', stateList, stateList);//Here state is a id of state dropdown
    setCities();
}

function setCities() {
    cntrySel = document.getElementById('country');//Here coutry is a id of country dropdown
    stateSel = document.getElementById('state');//Here state is a id of state dropdown
    cityList = cities[cntrySel.value][stateSel.value];
    changeSelect('city', cityList, cityList);////Here city is a id of city dropdown
}

function changeSelect(fieldID, newOptions, newValues) {
    selectField = document.getElementById(fieldID);
    selectField.options.length = 0;
    for (i = 0; i < newOptions.length; i++) {
        selectField.options[selectField.length] = new Option(newOptions[i], newValues[i]);
    }
}

function addLoadEvent(func) {
    var oldonload = window.onload;
    if (typeof window.onload != 'function') {
        window.onload = func;
    } else {
        window.onload = function () {
            if (oldonload) {
                oldonload();
            }
            func();
        }
    }
}

addLoadEvent(function () {
    setStates();
});
