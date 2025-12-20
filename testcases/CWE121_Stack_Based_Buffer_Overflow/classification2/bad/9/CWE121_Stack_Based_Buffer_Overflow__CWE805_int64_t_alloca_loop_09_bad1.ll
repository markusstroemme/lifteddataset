@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9b5 = external constant [5 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_10ec3:
  %storemerge1.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-856 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-856 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_10f11

dec_label_pc_10f11:                               ; preds = %dec_label_pc_10f11, %dec_label_pc_10ec3
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_10f28, label %dec_label_pc_10f11

dec_label_pc_10f28:                               ; preds = %dec_label_pc_10f11
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %5 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_10f98

dec_label_pc_10f98:                               ; preds = %dec_label_pc_10f98, %dec_label_pc_10f28
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_10faf, label %dec_label_pc_10f98

dec_label_pc_10faf:                               ; preds = %dec_label_pc_10f98
  %8 = ptrtoint ptr %stack_var_-8 to i64
  %9 = add i64 %4, 15
  %10 = and i64 %9, -16
  store i64 %10, ptr %stack_var_-856, align 8
  %11 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %11, i64 0, i64 100)
  %12 = add i64 %8, -816
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_1102b

dec_label_pc_1102b:                               ; preds = %dec_label_pc_10faf, %dec_label_pc_1102b
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %13 = ptrtoint ptr %storemerge1.reload to i64
  %14 = mul i64 %13, 8
  %15 = load i64, ptr %stack_var_-856, align 8
  %16 = add i64 %14, %15
  %17 = add i64 %12, %14
  %18 = inttoptr i64 %17 to ptr
  %19 = load i64, ptr %18, align 8
  %20 = inttoptr i64 %16 to ptr
  store i64 %19, ptr %20, align 8
  %21 = add i64 %13, 1
  %22 = inttoptr i64 %21 to ptr
  %23 = icmp ugt ptr %22, inttoptr (i64 99 to ptr)
  store ptr %22, ptr %storemerge1.reg2mem, align 8
  br i1 %23, label %dec_label_pc_11068, label %dec_label_pc_1102b

dec_label_pc_11068:                               ; preds = %dec_label_pc_1102b
  %24 = load i64, ptr %stack_var_-856, align 8
  %25 = inttoptr i64 %24 to ptr
  %26 = load i64, ptr %25, align 8
  call void @printLongLongLine(i64 %26)
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %1, %27
  br i1 %28, label %dec_label_pc_1108f, label %dec_label_pc_1108a

dec_label_pc_1108a:                               ; preds = %dec_label_pc_11068
  call void @__stack_chk_fail()
  br label %dec_label_pc_1108f

dec_label_pc_1108f:                               ; preds = %dec_label_pc_1108a, %dec_label_pc_11068
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

