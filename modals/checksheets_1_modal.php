<!-- Data Info Modal -->
<div class="modal fade" id="checksheets_1_modal" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header bg-dark">
        <h4 class="modal-title">(DCRIB) Daily Check Record for Dimension, Appearance, Assurance Inspection Board</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span class="text-white" aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-sm-8">
            <div class="form-group mb-0">
              <label>DCRIB No. : </label>
              <span id="m_dcrib_no_u" class="ml-2">DCRIB-001</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-8">
            <div class="form-group">
              <label>Inspection Date : </label>
              <span id="m_inspection_date_dcrib_u" class="ml-2">2023-08-01</span>
            </div>
          </div>
          <div class="col-sm-4">
            <div class="form-group">
              <label>Shift : </label>
              <span id="m_shift_dcrib_u" class="ml-2">Shift A</span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 col-sm-12">
            <div class="form-group">
              <label id="legend_dcrib_l">Describing Symbols</label>
            </div>
          </div>
          <div class="col-lg-2 col-sm-12">
            <div class="form-group">
              <label class="h4" for="legend_ok_dcrib_l">◯</label>
              <span>Normal / OK</span>
            </div>
          </div>
          <div class="col-lg-2 col-sm-12">
            <div class="form-group">
              <label class="h4" for="legend_adj_dcrib_l">△</label>
              <span>Adjust, Clean</span>
            </div>
          </div>
          <div class="col-lg-1 col-sm-12">
            <div class="form-group">
              <label class="h4" for="legend_ng_dcrib_l">X</label>
              <span>NG</span>
            </div>
          </div>
          <div class="col-lg-3 col-sm-12">
            <div class="form-group">
              <label class="h4" for="legend_na_dcrib_l">／</label>
              <span>Not applicable</span>
            </div>
          </div>
        </div>
        <div class="table-responsive" style="max-height: 500px; overflow: auto; display:inline-block;">
          <table id="checksheets1Table" class="table table-sm table-head-fixed text-nowrap table-hover">
            <thead style="text-align: center;">
              <tr>
                <th>
                  <input type="checkbox" name="" id="check_all_dcrib"  onclick="select_all_func_dcrib()">
                </th>
                <th>#</th>
                <th>DCRIB No.</th>
                <th>Daily Inspection Date</th>
                <th>Car Maker</th>
                <th>Car Model</th>
                <th>Line No.</th>
                <th>Group</th>
                <th>1</th>
                <th>2</th>
                <th>3A</th>
                <th>3B</th>
                <th>3C</th>
                <th>4</th>
                <th>5</th>
                <th>6</th>
                <th>7</th>
                <th>8</th>
                <th>9</th>
                <th>10</th>
                <th>11</th>
                <th>Inspector Name</th>
                <th>QA/Prod Jr. Staff/Staff</th>
                <th>Support Group Technician</th>
              </tr>
            </thead>
            <tbody id="checksheets1Data" style="text-align: center;">
              <tr>
                <td>
                  <p class="mb-0">
                    <label class="mb-0">
                      <input type="checkbox" class="singleCheck" value="1" onclick="get_checked_length_dcrib()" /><span></span>
                    </label>
                  </p>
                </td>
                <td>1</td>
                <td>DCRIB-001</td>
                <td>2023-08-01</td>
                <td>Suzuki</td>
                <td>YD1</td>
                <td>5101</td>
                <td>Shift A</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>△</td>
                <td>△</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>Name 1</td>
                <td>Name 2</td>
                <td>Name 3</td>
              </tr>
              <tr>
                <td>
                  <p class="mb-0">
                    <label class="mb-0">
                      <input type="checkbox" class="singleCheck" value="2" onclick="get_checked_length_dcrib()" /><span></span>
                    </label>
                  </p>
                </td>
                <td>2</td>
                <td>DCRIB-001</td>
                <td>2023-08-02</td>
                <td>Suzuki</td>
                <td>YD1</td>
                <td>5101</td>
                <td>Shift A</td>
                <td>◯</td>
                <td>◯</td>
                <td>△</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>Name 1</td>
                <td>Name 2</td>
                <td>Name 3</td>
              </tr>
              <tr>
                <td>
                  <p class="mb-0">
                    <label class="mb-0">
                      <input type="checkbox" class="singleCheck" value="3" onclick="get_checked_length_dcrib()" /><span></span>
                    </label>
                  </p>
                </td>
                <td>3</td>
                <td>DCRIB-001</td>
                <td>2023-08-03</td>
                <td>Suzuki</td>
                <td>YD1</td>
                <td>5101</td>
                <td>Shift A</td>
                <td>X</td>
                <td>◯</td>
                <td>◯</td>
                <td>／</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>◯</td>
                <td>Name 1</td>
                <td>Name 2</td>
                <td>Name 3</td>
              </tr>
              <!-- <tr>
                <td colspan="24" style="text-align:center;">
                  <div class="spinner-border text-dark" role="status">
                    <span class="sr-only">Loading...</span>
                  </div>
                </td>
              </tr> -->
            </tbody>
          </table>
        </div>
      </div>
      <div class="modal-footer bg-light">
        <button type="button" class="btn bg-dark" data-dismiss="modal" data-toggle="modal">Close</button>
        <button type="button" class="btn bg-success" onclick="" disabled>Approve Selected</button>
      </div>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<!-- /.modal -->