@global_var_34bf2 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5321:
  %storemerge.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call ptr @malloc(i32 8)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %1, label %dec_label_pc_5374, label %dec_label_pc_5343

dec_label_pc_5343:                                ; preds = %dec_label_pc_5321
  br i1 %4, label %dec_label_pc_5362, label %dec_label_pc_5358

dec_label_pc_5358:                                ; preds = %dec_label_pc_5343
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5362:                                ; preds = %dec_label_pc_5343
  %5 = call i128 @__asm_movsd(i64 9098483789791991595)
  %6 = call i64 @__asm_movsd.211(i128 %5)
  store i64 %6, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_53a3

dec_label_pc_5374:                                ; preds = %dec_label_pc_5321
  br i1 %4, label %dec_label_pc_5393, label %dec_label_pc_5389

dec_label_pc_5389:                                ; preds = %dec_label_pc_5374
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5393:                                ; preds = %dec_label_pc_5374
  %7 = call i128 @__asm_movsd(i64 9098483789791991595)
  %8 = call i64 @__asm_movsd.211(i128 %7)
  store i64 %8, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_53a3

dec_label_pc_53a3:                                ; preds = %dec_label_pc_5393, %dec_label_pc_5362
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  store i64 %storemerge.reload, ptr %2, align 8
  %9 = call i128 @__asm_movq(i64 %storemerge.reload)
  %10 = trunc i128 %9 to i64
  %11 = bitcast i64 %10 to double
  call void @printDoubleLine(double %11)
  call void @free(ptr %2)
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_2bda7:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i128 @__asm_movsd(i64) local_unnamed_addr

declare i64 @__asm_movsd.211(i128) local_unnamed_addr

declare i128 @__asm_movq(i64) local_unnamed_addr

