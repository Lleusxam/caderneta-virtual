import Link from "next/link";
import produtos from "../data/produtos"; // <- importando do arquivo externo

export default function ProductTable() {
  return (
    <table className="w-full border border-gray-300">
      <thead className="bg-gray-200">
        <tr>
          <th className="text-left p-2">Nome</th>
          <th className="text-left p-2">Tipo</th>
          <th className="text-left p-2">Cor</th>
          <th className="text-left p-2">Volume</th>
        </tr>
      </thead>
      <tbody>
        {produtos.map((p, i) => (
          <tr key={i} className="border-t border-gray-300 hover:bg-gray-100">
            <td className="p-2 text-blue-600 hover:underline cursor-pointer">
              <Link href={`/produtos/${p.id}`}>{p.nome}</Link>
            </td>
            <td className="p-2">{p.categoria}</td>
            <td className="p-2">{p.cor}</td>
            <td className="p-2">{p.capacidade}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
}
