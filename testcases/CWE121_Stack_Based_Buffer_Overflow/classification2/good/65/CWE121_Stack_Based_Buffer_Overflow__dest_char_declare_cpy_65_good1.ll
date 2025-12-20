define void @anon0() local_unnamed_addr {
dec_label_pc_1f9d5:
  %dataBadBuffer_-128 = alloca [50 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [50 x i8] undef, i8 %2, 0
  store [50 x i8] %3, ptr %dataBadBuffer_-128, align 8
  %4 = bitcast ptr %dataBadBuffer_-128 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_1fa2c, label %dec_label_pc_1fa27

dec_label_pc_1fa27:                               ; preds = %dec_label_pc_1f9d5
  call void @__stack_chk_fail()
  br label %dec_label_pc_1fa2c

dec_label_pc_1fa2c:                               ; preds = %dec_label_pc_1fa27, %dec_label_pc_1f9d5
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

