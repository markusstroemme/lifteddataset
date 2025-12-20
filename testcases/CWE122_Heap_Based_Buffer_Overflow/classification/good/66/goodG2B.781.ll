@global_var_34bf2 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_7354:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 8)
  %2 = bitcast ptr %1 to ptr
  %3 = insertvalue [5 x ptr] undef, ptr %2, 0
  store [5 x ptr] %3, ptr %dataArray_-64, align 8
  %4 = bitcast ptr %dataArray_-64 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_7396, label %dec_label_pc_738c

dec_label_pc_738c:                                ; preds = %dec_label_pc_7354
  call void @exit(i32 -1)
  unreachable

dec_label_pc_7396:                                ; preds = %dec_label_pc_7354
  %8 = call i128 @__asm_movsd(i64 9098483789791991595)
  %9 = call i64 @__asm_movsd.211(i128 %8)
  %10 = inttoptr i64 %5 to ptr
  store i64 %9, ptr %10, align 8
  %11 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_73cf, label %dec_label_pc_73ca

dec_label_pc_73ca:                                ; preds = %dec_label_pc_7396
  call void @__stack_chk_fail()
  br label %dec_label_pc_73cf

dec_label_pc_73cf:                                ; preds = %dec_label_pc_73ca, %dec_label_pc_7396
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_7422:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = call i128 @__asm_movq(i64 %5)
  %7 = trunc i128 %6 to i64
  %8 = bitcast i64 %7 to double
  call void @printDoubleLine(double %8)
  call void @free(ptr %4)
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

