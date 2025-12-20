@global_var_531bc = external constant [4 x i8]
@0 = external global i32

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_427a8:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  %1 = call i64 @_Znam(i64 400)
  store i64 %1, ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_427de:
  %0 = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %storemerge13.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %result to i64
  store i64 %2, ptr %rdi, align 8
  %stack_var_-8 = alloca i64, align 8
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = call i64 @__readfsqword(i64 40)
  %5 = add i64 %3, -816
  %6 = add i64 %3, -812
  store i64 0, ptr %storemerge13.reg2mem, align 8
  br label %dec_label_pc_42810

dec_label_pc_42810:                               ; preds = %dec_label_pc_42810, %dec_label_pc_427de
  %storemerge13.reload = load i64, ptr %storemerge13.reg2mem, align 8
  %7 = mul i64 %storemerge13.reload, 8
  %8 = add i64 %7, %5
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 8
  %10 = add i64 %6, %7
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge13.reload, 1
  %exitcond4 = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge13.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond4, label %dec_label_pc_42853, label %dec_label_pc_42810

dec_label_pc_42853:                               ; preds = %dec_label_pc_42810, %dec_label_pc_42853
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %13 = load i64, ptr %rdi, align 8
  %14 = mul i64 %storemerge2.reload, 8
  %15 = add i64 %13, %14
  %16 = add i64 %14, %5
  %17 = inttoptr i64 %16 to ptr
  %18 = load i64, ptr %17, align 8
  %19 = inttoptr i64 %15 to ptr
  store i64 %18, ptr %19, align 8
  %20 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %20, 100
  store i64 %20, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4288f, label %dec_label_pc_42853

dec_label_pc_4288f:                               ; preds = %dec_label_pc_42853
  %21 = bitcast ptr %rdi to ptr
  %22 = load i32, ptr %21, align 8
  %23 = zext i32 %22 to i64
  store i64 %23, ptr %rdi, align 8
  call void @printIntLine(i32 %22)
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %dec_label_pc_428c3, label %dec_label_pc_428b1

dec_label_pc_428b1:                               ; preds = %dec_label_pc_4288f
  %25 = inttoptr i64 %23 to ptr
  %26 = and i64 %1, 4294967295
  %27 = inttoptr i64 %26 to ptr
  call void @_ZdaPv(ptr %25, ptr %27)
  br label %dec_label_pc_428c3

dec_label_pc_428c3:                               ; preds = %dec_label_pc_428b1, %dec_label_pc_4288f
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %4, %28
  br i1 %29, label %dec_label_pc_428d8, label %dec_label_pc_428d3

dec_label_pc_428d3:                               ; preds = %dec_label_pc_428c3
  call void @__stack_chk_fail()
  br label %dec_label_pc_428d8

dec_label_pc_428d8:                               ; preds = %dec_label_pc_428d3, %dec_label_pc_428c3
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_42a0c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-32, ptr null)
  call void @anon1(ptr nonnull %stack_var_-32)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_42a62, label %dec_label_pc_42a5d

dec_label_pc_42a5d:                               ; preds = %dec_label_pc_42a0c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_42a62

dec_label_pc_42a62:                               ; preds = %dec_label_pc_42a5d, %dec_label_pc_42a0c
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

