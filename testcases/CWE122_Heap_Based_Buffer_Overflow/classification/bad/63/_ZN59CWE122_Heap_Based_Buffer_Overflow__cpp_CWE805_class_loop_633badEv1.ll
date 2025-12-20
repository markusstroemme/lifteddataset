@global_var_531bc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3bdb9:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 400)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = bitcast ptr %stack_var_-24 to ptr
  %3 = call i64 @anon1(ptr nonnull %2)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3be0b, label %dec_label_pc_3be06

dec_label_pc_3be06:                               ; preds = %dec_label_pc_3bdb9
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3be0b

dec_label_pc_3be0b:                               ; preds = %dec_label_pc_3be06, %dec_label_pc_3bdb9
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_3be71:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = add i64 %2, -816
  %5 = add i64 %2, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_3beb4

dec_label_pc_3beb4:                               ; preds = %dec_label_pc_3beb4, %dec_label_pc_3be71
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %6 = mul i64 %storemerge24.reload, 8
  %7 = add i64 %6, %4
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 8
  %9 = add i64 %5, %6
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond5 = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_3bf2a.preheader, label %dec_label_pc_3beb4

dec_label_pc_3bf2a.preheader:                     ; preds = %dec_label_pc_3beb4
  %12 = ptrtoint ptr %arg1 to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_3bef7

dec_label_pc_3bef7:                               ; preds = %dec_label_pc_3bef7, %dec_label_pc_3bf2a.preheader
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %13 = mul i64 %storemerge3.reload, 8
  %14 = add i64 %13, %12
  %15 = add i64 %13, %4
  %16 = inttoptr i64 %15 to ptr
  %17 = load i64, ptr %16, align 8
  %18 = inttoptr i64 %14 to ptr
  store i64 %17, ptr %18, align 8
  %19 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %19, 100
  store i64 %19, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3bf34, label %dec_label_pc_3bef7

dec_label_pc_3bf34:                               ; preds = %dec_label_pc_3bef7
  %20 = bitcast ptr %rdi to ptr
  %21 = load i32, ptr %20, align 8
  call void @printIntLine(i32 %21)
  %22 = icmp eq ptr %arg1, null
  br i1 %22, label %dec_label_pc_3bf5d, label %dec_label_pc_3bf4e

dec_label_pc_3bf4e:                               ; preds = %dec_label_pc_3bf34
  %23 = bitcast ptr %arg1 to ptr
  %24 = and i64 %1, 4294967295
  %25 = inttoptr i64 %24 to ptr
  call void @_ZdaPv(ptr %23, ptr %25)
  br label %dec_label_pc_3bf5d

dec_label_pc_3bf5d:                               ; preds = %dec_label_pc_3bf4e, %dec_label_pc_3bf34
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %3, %26
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %27, label %dec_label_pc_3bf72, label %dec_label_pc_3bf6d

dec_label_pc_3bf6d:                               ; preds = %dec_label_pc_3bf5d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3bf72

dec_label_pc_3bf72:                               ; preds = %dec_label_pc_3bf6d, %dec_label_pc_3bf5d
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

