@staticTrue = external local_unnamed_addr global i32
@global_var_531bc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_36619:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %storemerge13.reg2mem = alloca i64, align 8
  %stack_var_-848.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = load i32, ptr @staticTrue, align 4
  %4 = icmp eq i32 %3, 0
  store i64 0, ptr %stack_var_-848.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_3665d, label %dec_label_pc_3664c

dec_label_pc_3664c:                               ; preds = %dec_label_pc_36619
  %5 = call i64 @_Znam(i64 400)
  store i64 %5, ptr %stack_var_-848.0.reg2mem, align 8
  br label %dec_label_pc_3665d

dec_label_pc_3665d:                               ; preds = %dec_label_pc_3664c, %dec_label_pc_36619
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-848.0.reload = load i64, ptr %stack_var_-848.0.reg2mem, align 8
  %7 = add i64 %6, -816
  %8 = add i64 %6, -812
  store i64 0, ptr %storemerge13.reg2mem, align 8
  br label %dec_label_pc_3666a

dec_label_pc_3666a:                               ; preds = %dec_label_pc_3666a, %dec_label_pc_3665d
  %storemerge13.reload = load i64, ptr %storemerge13.reg2mem, align 8
  %9 = mul i64 %storemerge13.reload, 8
  %10 = add i64 %9, %7
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 8
  %12 = add i64 %8, %9
  %13 = inttoptr i64 %12 to ptr
  store i32 0, ptr %13, align 4
  %14 = add nuw nsw i64 %storemerge13.reload, 1
  %exitcond4 = icmp eq i64 %14, 100
  store i64 %14, ptr %storemerge13.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond4, label %dec_label_pc_366ad, label %dec_label_pc_3666a

dec_label_pc_366ad:                               ; preds = %dec_label_pc_3666a, %dec_label_pc_366ad
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %15 = mul i64 %storemerge2.reload, 8
  %16 = add i64 %15, %stack_var_-848.0.reload
  %17 = add i64 %15, %7
  %18 = inttoptr i64 %17 to ptr
  %19 = load i64, ptr %18, align 8
  %20 = inttoptr i64 %16 to ptr
  store i64 %19, ptr %20, align 8
  %21 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %21, 100
  store i64 %21, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_366ea, label %dec_label_pc_366ad

dec_label_pc_366ea:                               ; preds = %dec_label_pc_366ad
  %22 = inttoptr i64 %stack_var_-848.0.reload to ptr
  %23 = load i32, ptr %22, align 4
  call void @printIntLine(i32 %23)
  %24 = icmp eq i64 %stack_var_-848.0.reload, 0
  br i1 %24, label %dec_label_pc_36713, label %dec_label_pc_36704

dec_label_pc_36704:                               ; preds = %dec_label_pc_366ea
  %25 = inttoptr i64 %stack_var_-848.0.reload to ptr
  %26 = and i64 %1, 4294967295
  %27 = inttoptr i64 %26 to ptr
  call void @_ZdaPv(ptr %25, ptr %27)
  br label %dec_label_pc_36713

dec_label_pc_36713:                               ; preds = %dec_label_pc_36704, %dec_label_pc_366ea
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %2, %28
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %29, label %dec_label_pc_36728, label %dec_label_pc_36723

dec_label_pc_36723:                               ; preds = %dec_label_pc_36713
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_36728

dec_label_pc_36728:                               ; preds = %dec_label_pc_36723, %dec_label_pc_36713
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

