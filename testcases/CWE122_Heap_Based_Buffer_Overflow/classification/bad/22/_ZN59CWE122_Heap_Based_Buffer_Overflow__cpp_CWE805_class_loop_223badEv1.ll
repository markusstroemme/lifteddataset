@global_var_531bc = external constant [4 x i8]
@0 = external global i32
@global_var_6c1e8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3945f:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %storemerge13.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @global_var_6c1e8, align 4
  %4 = call i64 @anon1(ptr null)
  %5 = add i64 %2, -816
  %6 = add i64 %2, -812
  store i64 0, ptr %storemerge13.reg2mem, align 8
  br label %dec_label_pc_394b5

dec_label_pc_394b5:                               ; preds = %dec_label_pc_394b5, %dec_label_pc_3945f
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
  br i1 %exitcond4, label %dec_label_pc_394f8, label %dec_label_pc_394b5

dec_label_pc_394f8:                               ; preds = %dec_label_pc_394b5, %dec_label_pc_394f8
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %13 = mul i64 %storemerge2.reload, 8
  %14 = add i64 %13, %4
  %15 = add i64 %13, %5
  %16 = inttoptr i64 %15 to ptr
  %17 = load i64, ptr %16, align 8
  %18 = inttoptr i64 %14 to ptr
  store i64 %17, ptr %18, align 8
  %19 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %19, 100
  store i64 %19, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_39535, label %dec_label_pc_394f8

dec_label_pc_39535:                               ; preds = %dec_label_pc_394f8
  %20 = inttoptr i64 %4 to ptr
  %21 = load i32, ptr %20, align 4
  call void @printIntLine(i32 %21)
  %22 = icmp eq i64 %4, 0
  br i1 %22, label %dec_label_pc_3955e, label %dec_label_pc_3954f

dec_label_pc_3954f:                               ; preds = %dec_label_pc_39535
  %23 = inttoptr i64 %4 to ptr
  %24 = and i64 %1, 4294967295
  %25 = inttoptr i64 %24 to ptr
  call void @_ZdaPv(ptr %23, ptr %25)
  br label %dec_label_pc_3955e

dec_label_pc_3955e:                               ; preds = %dec_label_pc_3954f, %dec_label_pc_39535
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %3, %26
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %27, label %dec_label_pc_39573, label %dec_label_pc_3956e

dec_label_pc_3956e:                               ; preds = %dec_label_pc_3955e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_39573

dec_label_pc_39573:                               ; preds = %dec_label_pc_3956e, %dec_label_pc_3955e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_397b6:
  %stack_var_-16.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  %1 = load i32, ptr @global_var_6c1e8, align 4
  %2 = icmp eq i32 %1, 0
  store i64 %0, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_397de, label %dec_label_pc_397d0

dec_label_pc_397d0:                               ; preds = %dec_label_pc_397b6
  %3 = call i64 @_Znam(i64 400)
  store i64 %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_397de

dec_label_pc_397de:                               ; preds = %dec_label_pc_397d0, %dec_label_pc_397b6
  %stack_var_-16.0.reload = load i64, ptr %stack_var_-16.0.reg2mem, align 8
  ret i64 %stack_var_-16.0.reload
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

