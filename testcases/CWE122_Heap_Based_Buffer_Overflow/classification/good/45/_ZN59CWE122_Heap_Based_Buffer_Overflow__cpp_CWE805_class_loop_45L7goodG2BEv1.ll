@global_var_320 = external constant [20 x i8]
@global_var_6c200 = external local_unnamed_addr global i64
@global_var_531bc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3acdb:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %storemerge13.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = load i64, ptr @global_var_6c200, align 8
  %5 = add i64 %2, -816
  %6 = add i64 %2, -812
  store i64 0, ptr %storemerge13.reg2mem, align 8
  br label %dec_label_pc_3ad14

dec_label_pc_3ad14:                               ; preds = %dec_label_pc_3ad14, %dec_label_pc_3acdb
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
  br i1 %exitcond4, label %dec_label_pc_3ad57, label %dec_label_pc_3ad14

dec_label_pc_3ad57:                               ; preds = %dec_label_pc_3ad14, %dec_label_pc_3ad57
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
  br i1 %exitcond, label %dec_label_pc_3ad94, label %dec_label_pc_3ad57

dec_label_pc_3ad94:                               ; preds = %dec_label_pc_3ad57
  %20 = inttoptr i64 %4 to ptr
  %21 = load i32, ptr %20, align 4
  call void @printIntLine(i32 %21)
  %22 = icmp eq i64 %4, 0
  br i1 %22, label %dec_label_pc_3adbd, label %dec_label_pc_3adae

dec_label_pc_3adae:                               ; preds = %dec_label_pc_3ad94
  %23 = inttoptr i64 %4 to ptr
  %24 = and i64 %1, 4294967295
  %25 = inttoptr i64 %24 to ptr
  call void @_ZdaPv(ptr %23, ptr %25)
  br label %dec_label_pc_3adbd

dec_label_pc_3adbd:                               ; preds = %dec_label_pc_3adae, %dec_label_pc_3ad94
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %3, %26
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %27, label %dec_label_pc_3add2, label %dec_label_pc_3adcd

dec_label_pc_3adcd:                               ; preds = %dec_label_pc_3adbd
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3add2

dec_label_pc_3add2:                               ; preds = %dec_label_pc_3adcd, %dec_label_pc_3adbd
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_3add4:
  %0 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 %0, ptr @global_var_6c200, align 8
  %1 = call i64 @anon0()
  ret i64 %1
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

