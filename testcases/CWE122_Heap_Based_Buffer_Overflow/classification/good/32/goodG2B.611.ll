@global_var_34bf2 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_6134:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 8)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_6191, label %dec_label_pc_6187

dec_label_pc_6187:                                ; preds = %dec_label_pc_6134
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6191:                                ; preds = %dec_label_pc_6134
  %4 = call i128 @__asm_movsd(i64 9098483789791991595)
  %5 = call i64 @__asm_movsd.211(i128 %4)
  store i64 %5, ptr %1, align 8
  %6 = call i128 @__asm_movq(i64 %5)
  %7 = trunc i128 %6 to i64
  %8 = bitcast i64 %7 to double
  call void @printDoubleLine(double %8)
  call void @free(ptr %1)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_61e9, label %dec_label_pc_61e4

dec_label_pc_61e4:                                ; preds = %dec_label_pc_6191
  call void @__stack_chk_fail()
  br label %dec_label_pc_61e9

dec_label_pc_61e9:                                ; preds = %dec_label_pc_61e4, %dec_label_pc_6191
  ret void
}

define void @printDoubleLine(double %doubleNumber) local_unnamed_addr {
dec_label_pc_2bad7:
  %0 = fptrunc double %doubleNumber to float
  %1 = bitcast float %0 to i32
  %2 = sext i32 %1 to i128
  %3 = call i64 @__asm_movsd.211(i128 %2)
  %4 = call i128 @__asm_movq(i64 %3)
  %5 = trunc i128 %4 to i64
  %6 = bitcast i64 %5 to double
  %7 = call i32 (ptr, ...) @printf(ptr @global_var_34bf2, double %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i128 @__asm_movsd(i64) local_unnamed_addr

declare i64 @__asm_movsd.211(i128) local_unnamed_addr

declare i128 @__asm_movq(i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

