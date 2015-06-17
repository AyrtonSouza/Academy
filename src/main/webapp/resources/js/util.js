function desabilitarMunicipio(exercicioSelect) {
    var options = [];
    options.push('<option value="">Selecione..</option>');
    exercicioSelect.html(options.join('')).prop('disabled', true);
}

function popularExercicios(aparelhoSelect, exercicioSelect, idExercicio) {
    var idAparelho = aparelhoSelect.val();
    if (idAparelho != null && idAparelho != '') {
        $.getJSON('/inb/treinos/aparelho', {
            stateName: aparelhoSelect.val(),
            ajax: 'true'
        }, function (data) {
            var html = '<option value="">City</option>';
            var len = data.length;
            for (var i = 0; i < len; i++) {
                html += '<option value="' + data[i].exeId + '">'
                        + data[i].exeNome + '</option>';
            }
            html += '</option>';

            $('#city').html(html);
        });
    } else {
        desabilitarMunicipio(exercicioSelect);
    }
}