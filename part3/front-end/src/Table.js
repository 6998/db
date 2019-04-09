import React from 'react';

export default (data, fields) => {
  const headers = fields.map((field, index) => (
    <th key={index}>{field.name}</th>
  ));
  const rows = data.map((row, index1) => (
    <tr key={index1}>
      {Object.values(fields).map((field, index2) => (
        <td key={`${index1}_${index2}`}>{row[field.name]}</td>
      ))}
    </tr>
  ));

  return (
    <div className="table-container">
      <table>
        <thead>
          <tr>{headers}</tr>
        </thead>
        <tbody>{rows}</tbody>
      </table>
    </div>
  );
};
