@global_var_531bc = external constant [4 x i8]
@0 = external global i32
@global_var_6c054 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3834e:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %storemerge13.reg2mem = alloca i64, align 8
  %stack_var_-848.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = load i32, ptr @global_var_6c054, align 4
  %4 = icmp eq i32 %3, 5
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %stack_var_-848.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_38393, label %dec_label_pc_38382

dec_label_pc_38382:                               ; preds = %dec_label_pc_3834e
  %6 = call i64 @_Znam(i64 400)
  store i64 %6, ptr %stack_var_-848.0.reg2mem, align 8
  br label %dec_label_pc_38393

dec_label_pc_38393:                               ; preds = %dec_label_pc_38382, %dec_label_pc_3834e
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-848.0.reload = load i64, ptr %stack_var_-848.0.reg2mem, align 8
  %8 = add i64 %7, -816
  %9 = add i64 %7, -812
  store i64 0, ptr %storemerge13.reg2mem, align 8
  br label %dec_label_pc_383a0

dec_label_pc_383a0:                               ; preds = %dec_label_pc_383a0, %dec_label_pc_38393
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
  br i1 %exitcond4, label %dec_label_pc_383e3, label %dec_label_pc_383a0

dec_label_pc_383e3:                               ; preds = %dec_label_pc_383a0, %dec_label_pc_383e3
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %16 = mul i64 %storemerge2.reload, 8
  %17 = add i64 %16, %stack_var_-848.0.reload
  %18 = add i64 %16, %8
  %19 = inttoptr i64 %18 to ptr
  %20 = load i64, ptr %19, align 8
  %21 = inttoptr i64 %17 to ptr
  store i64 %20, ptr %21, align 8
  %22 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %22, 100
  store i64 %22, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_38420, label %dec_label_pc_383e3

dec_label_pc_38420:                               ; preds = %dec_label_pc_383e3
  %23 = inttoptr i64 %stack_var_-848.0.reload to ptr
  %24 = load i32, ptr %23, align 4
  call void @printIntLine(i32 %24)
  %25 = icmp eq i64 %stack_var_-848.0.reload, 0
  br i1 %25, label %dec_label_pc_38449, label %dec_label_pc_3843a

dec_label_pc_3843a:                               ; preds = %dec_label_pc_38420
  %26 = inttoptr i64 %stack_var_-848.0.reload to ptr
  %27 = and i64 %1, 4294967295
  %28 = inttoptr i64 %27 to ptr
  call void @_ZdaPv(ptr %26, ptr %28)
  br label %dec_label_pc_38449

dec_label_pc_38449:                               ; preds = %dec_label_pc_3843a, %dec_label_pc_38420
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %2, %29
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %30, label %dec_label_pc_3845e, label %dec_label_pc_38459

dec_label_pc_38459:                               ; preds = %dec_label_pc_38449
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3845e

dec_label_pc_3845e:                               ; preds = %dec_label_pc_38459, %dec_label_pc_38449
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

