@global_var_4903f = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_22621:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %storemerge.reg2mem, align 8
  br i1 %3, label %dec_label_pc_22645, label %dec_label_pc_22670

dec_label_pc_22645:                               ; preds = %dec_label_pc_22621
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 4
  %6 = add i64 %4, 4
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  store i64 %4, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_22670

dec_label_pc_22670:                               ; preds = %dec_label_pc_22621, %dec_label_pc_22645
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %8 = call i32 @globalReturnsTrueOrFalse()
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i1 %9, false
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_226a3, label %dec_label_pc_2267e

dec_label_pc_2267e:                               ; preds = %dec_label_pc_22670
  %12 = inttoptr i64 %storemerge.reload to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %14 = icmp eq i64 %storemerge.reload, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_226de, label %dec_label_pc_22694

dec_label_pc_22694:                               ; preds = %dec_label_pc_2267e
  %15 = inttoptr i64 %storemerge.reload to ptr
  %16 = call i64 @_ZdlPvm(ptr %15, i64 8)
  store i64 %16, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_226de

dec_label_pc_226a3:                               ; preds = %dec_label_pc_22670
  %17 = icmp eq i64 %storemerge.reload, 0
  br i1 %17, label %dec_label_pc_226cf, label %dec_label_pc_226aa

dec_label_pc_226aa:                               ; preds = %dec_label_pc_226a3
  %18 = inttoptr i64 %storemerge.reload to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %20 = inttoptr i64 %storemerge.reload to ptr
  %21 = call i64 @_ZdlPvm(ptr %20, i64 8)
  store i64 %21, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_226de

dec_label_pc_226cf:                               ; preds = %dec_label_pc_226a3
  call void @printLine(ptr @global_var_4903f)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_226de

dec_label_pc_226de:                               ; preds = %dec_label_pc_226cf, %dec_label_pc_226aa, %dec_label_pc_22694, %dec_label_pc_2267e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3d05d:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

