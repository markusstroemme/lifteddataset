@global_var_531bc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3c5bf:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 400)
  %2 = bitcast ptr %stack_var_-56 to ptr
  %3 = call i64 @anon1(ptr nonnull %2)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3c619, label %dec_label_pc_3c614

dec_label_pc_3c614:                               ; preds = %dec_label_pc_3c5bf
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3c619

dec_label_pc_3c619:                               ; preds = %dec_label_pc_3c614, %dec_label_pc_3c5bf
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_3c687:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %storemerge13.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %arg1 to i64
  %stack_var_-8 = alloca i64, align 8
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = call i64 @__readfsqword(i64 40)
  %5 = add i64 %2, 16
  %6 = inttoptr i64 %5 to ptr
  %7 = load i64, ptr %6, align 8
  %8 = add i64 %3, -816
  %9 = add i64 %3, -812
  store i64 0, ptr %storemerge13.reg2mem, align 8
  br label %dec_label_pc_3c6cb

dec_label_pc_3c6cb:                               ; preds = %dec_label_pc_3c6cb, %dec_label_pc_3c687
  %storemerge13.reload = load i64, ptr %storemerge13.reg2mem, align 8
  %10 = mul i64 %storemerge13.reload, 8
  %11 = add i64 %10, %8
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 8
  %13 = add i64 %9, %10
  %14 = inttoptr i64 %13 to ptr
  store i32 0, ptr %14, align 4
  %15 = add nuw nsw i64 %storemerge13.reload, 1
  %exitcond4 = icmp eq i64 %15, 100
  store i64 %15, ptr %storemerge13.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond4, label %dec_label_pc_3c70e, label %dec_label_pc_3c6cb

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c6cb, %dec_label_pc_3c70e
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %16 = mul i64 %storemerge2.reload, 8
  %17 = add i64 %16, %7
  %18 = add i64 %16, %8
  %19 = inttoptr i64 %18 to ptr
  %20 = load i64, ptr %19, align 8
  %21 = inttoptr i64 %17 to ptr
  store i64 %20, ptr %21, align 8
  %22 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %22, 100
  store i64 %22, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3c74b, label %dec_label_pc_3c70e

dec_label_pc_3c74b:                               ; preds = %dec_label_pc_3c70e
  %23 = inttoptr i64 %7 to ptr
  %24 = load i32, ptr %23, align 4
  call void @printIntLine(i32 %24)
  %25 = icmp eq i64 %7, 0
  br i1 %25, label %dec_label_pc_3c774, label %dec_label_pc_3c765

dec_label_pc_3c765:                               ; preds = %dec_label_pc_3c74b
  %26 = inttoptr i64 %7 to ptr
  %27 = and i64 %1, 4294967295
  %28 = inttoptr i64 %27 to ptr
  call void @_ZdaPv(ptr %26, ptr %28)
  br label %dec_label_pc_3c774

dec_label_pc_3c774:                               ; preds = %dec_label_pc_3c765, %dec_label_pc_3c74b
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %4, %29
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %30, label %dec_label_pc_3c789, label %dec_label_pc_3c784

dec_label_pc_3c784:                               ; preds = %dec_label_pc_3c774
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3c789

dec_label_pc_3c789:                               ; preds = %dec_label_pc_3c784, %dec_label_pc_3c774
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_42e9b:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_531bc, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

