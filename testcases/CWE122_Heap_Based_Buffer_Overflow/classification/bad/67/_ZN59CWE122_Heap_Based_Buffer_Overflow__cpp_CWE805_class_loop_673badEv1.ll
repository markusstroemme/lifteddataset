@global_var_531bc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3c88f:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 400)
  %2 = call i64 @anon1(i64 %1)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_3c8e9, label %dec_label_pc_3c8e4

dec_label_pc_3c8e4:                               ; preds = %dec_label_pc_3c88f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3c8e9

dec_label_pc_3c8e9:                               ; preds = %dec_label_pc_3c8e4, %dec_label_pc_3c88f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_3c957:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %storemerge13.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = add i64 %2, -816
  %5 = add i64 %2, -812
  store i64 0, ptr %storemerge13.reg2mem, align 8
  br label %dec_label_pc_3c997

dec_label_pc_3c997:                               ; preds = %dec_label_pc_3c997, %dec_label_pc_3c957
  %storemerge13.reload = load i64, ptr %storemerge13.reg2mem, align 8
  %6 = mul i64 %storemerge13.reload, 8
  %7 = add i64 %6, %4
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 8
  %9 = add i64 %5, %6
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge13.reload, 1
  %exitcond4 = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge13.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond4, label %dec_label_pc_3c9da, label %dec_label_pc_3c997

dec_label_pc_3c9da:                               ; preds = %dec_label_pc_3c997, %dec_label_pc_3c9da
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %12 = mul i64 %storemerge2.reload, 8
  %13 = add i64 %12, %arg1
  %14 = add i64 %12, %4
  %15 = inttoptr i64 %14 to ptr
  %16 = load i64, ptr %15, align 8
  %17 = inttoptr i64 %13 to ptr
  store i64 %16, ptr %17, align 8
  %18 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %18, 100
  store i64 %18, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3ca17, label %dec_label_pc_3c9da

dec_label_pc_3ca17:                               ; preds = %dec_label_pc_3c9da
  %19 = bitcast ptr %rdi to ptr
  %20 = load i32, ptr %19, align 8
  call void @printIntLine(i32 %20)
  %21 = icmp eq i64 %arg1, 0
  br i1 %21, label %dec_label_pc_3ca40, label %dec_label_pc_3ca31

dec_label_pc_3ca31:                               ; preds = %dec_label_pc_3ca17
  %22 = inttoptr i64 %arg1 to ptr
  %23 = and i64 %1, 4294967295
  %24 = inttoptr i64 %23 to ptr
  call void @_ZdaPv(ptr %22, ptr %24)
  br label %dec_label_pc_3ca40

dec_label_pc_3ca40:                               ; preds = %dec_label_pc_3ca31, %dec_label_pc_3ca17
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %3, %25
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %26, label %dec_label_pc_3ca55, label %dec_label_pc_3ca50

dec_label_pc_3ca50:                               ; preds = %dec_label_pc_3ca40
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3ca55

dec_label_pc_3ca55:                               ; preds = %dec_label_pc_3ca50, %dec_label_pc_3ca40
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

