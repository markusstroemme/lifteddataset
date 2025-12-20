@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32
@global_var_1000 = external global i32
@global_var_fff = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_453d0:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_45419

dec_label_pc_45419:                               ; preds = %dec_label_pc_45419, %dec_label_pc_453d0
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_45430, label %dec_label_pc_45419

dec_label_pc_45430:                               ; preds = %dec_label_pc_45419
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 16
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_4549b

dec_label_pc_4549b:                               ; preds = %dec_label_pc_4549b, %dec_label_pc_45430
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_454b2, label %dec_label_pc_4549b

dec_label_pc_454b2:                               ; preds = %dec_label_pc_4549b
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 16
  %7 = sub i64 %4, %constexpr3
  %8 = call i32 @globalReturnsTrueOrFalse()
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i1 %9, false
  %11 = icmp eq i1 %10, false
  %storemerge.v.v = select i1 %11, i64 %7, i64 %4
  %storemerge.v = add i64 %storemerge.v.v, 15
  %storemerge = and i64 %storemerge.v, -16
  store i64 %storemerge, ptr %stack_var_-56, align 8
  %12 = call i32 @globalReturnsTrueOrFalse()
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i1 %13, false
  %15 = icmp eq i1 %14, false
  %16 = load i64, ptr %stack_var_-56, align 8
  %17 = inttoptr i64 %16 to ptr
  br i1 %15, label %dec_label_pc_45556, label %dec_label_pc_4551d

dec_label_pc_4551d:                               ; preds = %dec_label_pc_454b2
  %18 = call ptr @_ZnwmPv(i64 8, ptr %17)
  %19 = ptrtoint ptr %18 to i64
  %20 = bitcast ptr %18 to ptr
  store i32 5, ptr %20, align 4
  %21 = add i64 %19, 4
  %22 = inttoptr i64 %21 to ptr
  store i32 10, ptr %22, align 4
  %23 = load i32, ptr %20, align 4
  call void @printIntLine(i32 %23)
  br label %dec_label_pc_45582

dec_label_pc_45556:                               ; preds = %dec_label_pc_454b2
  %24 = call ptr @_ZnwmPv(i64 4, ptr %17)
  %25 = bitcast ptr %24 to ptr
  store i32 5, ptr %25, align 4
  call void @printIntLine(i32 5)
  br label %dec_label_pc_45582

dec_label_pc_45582:                               ; preds = %dec_label_pc_45556, %dec_label_pc_4551d
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %1, %26
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %27, label %dec_label_pc_45597, label %dec_label_pc_45592

dec_label_pc_45592:                               ; preds = %dec_label_pc_45582
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_45597

dec_label_pc_45597:                               ; preds = %dec_label_pc_45592, %dec_label_pc_45582
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5bf88:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_6eb7c, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_5c45b:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

