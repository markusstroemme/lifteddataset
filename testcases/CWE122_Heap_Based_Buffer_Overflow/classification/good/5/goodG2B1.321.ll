@global_var_338e8 = external constant [21 x i8]
@global_var_34bf2 = external constant [4 x i8]
@global_var_4c044 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4914:
  %0 = load i32, ptr @global_var_4c044, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_4943, label %dec_label_pc_4932

dec_label_pc_4932:                                ; preds = %dec_label_pc_4914
  call void @printLine(ptr @global_var_338e8)
  unreachable

dec_label_pc_4943:                                ; preds = %dec_label_pc_4914
  %2 = call ptr @malloc(i32 8)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_4962, label %dec_label_pc_4958

dec_label_pc_4958:                                ; preds = %dec_label_pc_4943
  call void @exit(i32 -1)
  unreachable

dec_label_pc_4962:                                ; preds = %dec_label_pc_4943
  %5 = call i128 @__asm_movsd(i64 9098483789791991595)
  %6 = call i64 @__asm_movsd.211(i128 %5)
  store i64 %6, ptr %2, align 8
  %7 = call i128 @__asm_movq(i64 %6)
  %8 = trunc i128 %7 to i64
  %9 = bitcast i64 %8 to double
  call void @printDoubleLine(double %9)
  call void @free(ptr %2)
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_2b879:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_2b89c, label %dec_label_pc_2b890

dec_label_pc_2b890:                               ; preds = %dec_label_pc_2b879
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_2b89c

dec_label_pc_2b89c:                               ; preds = %dec_label_pc_2b890, %dec_label_pc_2b879
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

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i128 @__asm_movsd(i64) local_unnamed_addr

declare i64 @__asm_movsd.211(i128) local_unnamed_addr

declare i128 @__asm_movq(i64) local_unnamed_addr

