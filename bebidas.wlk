object whisky {
    method rendimiento(dosis) = 0.9 ** dosis
}
object cianuro {
    method rendimiento(dosis) = 0
}

object terere {
    method rendimiento(dosis) = (dosis * 0.1).max(1)
}

object agua {
    method rendimiento(dosis) = 1
}
object aguaSaborizada {
    const composicion = [agua, whisky]
    method saborizar(bebida) {
        composicion.clear() 
        composicion.add(agua) 
        composicion.add(bebida)
    }
    method rendimiento(dosis) = composicion.first().rendimiento(dosis) + composicion.last().rendimiento(dosis) * 0.25
}

object coctel {
    const bebidas = []
    method agregarBebida(unaBebida) {
        bebidas.add(unaBebida)
    }
    method rendimiento(dosis) {
        bebidas.sum({bebida => bebida.rendimiento(dosis)})
    }
}

object licuado {
    const nutrientes = []
    method agregarNutrientes(valorNutriente) {
        nutrientes.add(valorNutriente)
    }
    method nutrientes() = nutrientes
    method rendimiento(dosis) = dosis * nutrientes.sum()
}