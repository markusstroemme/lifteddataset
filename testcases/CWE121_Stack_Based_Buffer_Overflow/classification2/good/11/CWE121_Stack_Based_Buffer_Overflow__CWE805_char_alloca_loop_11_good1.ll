@global_var_1000 = external global ptr
@global_var_80fa9 = external constant [21 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_b2ae:
  %storemerge3.reg2mem = alloca ptr, align 8
  %.in.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_b2fa

dec_label_pc_b2fa:                                ; preds = %dec_label_pc_b2fa, %dec_label_pc_b2ae
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_b311, label %dec_label_pc_b2fa

dec_label_pc_b311:                                ; preds = %dec_label_pc_b2fa
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_b37c

dec_label_pc_b37c:                                ; preds = %dec_label_pc_b37c, %dec_label_pc_b311
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_b393, label %dec_label_pc_b37c

dec_label_pc_b393:                                ; preds = %dec_label_pc_b37c
  %7 = call i32 @globalReturnsFalse()
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %dec_label_pc_b3ef, label %dec_label_pc_b3de

dec_label_pc_b3de:                                ; preds = %dec_label_pc_b393
  call void @printLine(ptr @global_var_80fa9)
  br label %dec_label_pc_b404

dec_label_pc_b3ef:                                ; preds = %dec_label_pc_b393
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %9 = add i64 %4, %constexpr5
  %10 = and i64 %9, -16
  %11 = inttoptr i64 %10 to ptr
  %12 = bitcast ptr %stack_var_-152 to ptr
  store i64 %10, ptr %12, align 8
  store i8 0, ptr %11, align 16
  br label %dec_label_pc_b404

dec_label_pc_b404:                                ; preds = %dec_label_pc_b3ef, %dec_label_pc_b3de
  %13 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %14 = load ptr, ptr %stack_var_-152, align 8
  %15 = ptrtoint ptr %stack_var_-120 to i64
  store ptr %14, ptr %.in.reg2mem, align 8
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_b42b

dec_label_pc_b42b:                                ; preds = %dec_label_pc_b404, %dec_label_pc_b42b
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %.in.reload = load ptr, ptr %.in.reg2mem, align 8
  %16 = ptrtoint ptr %.in.reload to i64
  %17 = ptrtoint ptr %storemerge3.reload to i64
  %18 = add i64 %17, %16
  %19 = add i64 %17, %15
  %20 = inttoptr i64 %19 to ptr
  %21 = load i8, ptr %20, align 1
  %22 = inttoptr i64 %18 to ptr
  store i8 %21, ptr %22, align 1
  %23 = add i64 %17, 1
  %24 = inttoptr i64 %23 to ptr
  %25 = icmp ugt ptr %24, inttoptr (i64 99 to ptr)
  %26 = load ptr, ptr %stack_var_-152, align 8
  store ptr %26, ptr %.in.reg2mem, align 8
  store ptr %24, ptr %storemerge3.reg2mem, align 8
  br i1 %25, label %dec_label_pc_b461, label %dec_label_pc_b42b

dec_label_pc_b461:                                ; preds = %dec_label_pc_b42b
  %27 = ptrtoint ptr %26 to i64
  %28 = add i64 %27, 99
  %29 = inttoptr i64 %28 to ptr
  store i8 0, ptr %29, align 1
  %30 = load ptr, ptr %stack_var_-152, align 8
  call void @printLine(ptr %30)
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %1, %31
  br i1 %32, label %dec_label_pc_b493, label %dec_label_pc_b48e

dec_label_pc_b48e:                                ; preds = %dec_label_pc_b461
  call void @__stack_chk_fail()
  br label %dec_label_pc_b493

dec_label_pc_b493:                                ; preds = %dec_label_pc_b48e, %dec_label_pc_b461
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_6debc:
  ret i32 0
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

