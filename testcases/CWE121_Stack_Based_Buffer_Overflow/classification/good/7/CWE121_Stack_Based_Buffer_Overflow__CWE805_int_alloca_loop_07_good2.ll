@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32
@global_var_e604c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_38aed:
  %storemerge3.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-456 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-456 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_38b3b

dec_label_pc_38b3b:                               ; preds = %dec_label_pc_38b3b, %dec_label_pc_38aed
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_38b52, label %dec_label_pc_38b3b

dec_label_pc_38b52:                               ; preds = %dec_label_pc_38b3b
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_38bc2

dec_label_pc_38bc2:                               ; preds = %dec_label_pc_38bc2, %dec_label_pc_38b52
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_38bd9, label %dec_label_pc_38bc2

dec_label_pc_38bd9:                               ; preds = %dec_label_pc_38bc2
  %7 = load i32, ptr @global_var_e604c, align 4
  %8 = icmp eq i32 %7, 5
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_38c32, label %dec_label_pc_38c24

dec_label_pc_38c24:                               ; preds = %dec_label_pc_38bd9
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 416
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %10 = add i64 %4, %constexpr5
  %11 = and i64 %10, -16
  %12 = bitcast ptr %stack_var_-456 to ptr
  store i64 %11, ptr %12, align 8
  br label %dec_label_pc_38c32

dec_label_pc_38c32:                               ; preds = %dec_label_pc_38c24, %dec_label_pc_38bd9
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %14, i64 0, i64 50)
  %15 = add i64 %13, -416
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_38c56

dec_label_pc_38c56:                               ; preds = %dec_label_pc_38c32, %dec_label_pc_38c56
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %16 = ptrtoint ptr %storemerge3.reload to i64
  %17 = mul i64 %16, 4
  %18 = load ptr, ptr %stack_var_-456, align 8
  %19 = ptrtoint ptr %18 to i64
  %20 = add i64 %17, %19
  %21 = add i64 %15, %17
  %22 = inttoptr i64 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = inttoptr i64 %20 to ptr
  store i32 %23, ptr %24, align 4
  %25 = add i64 %16, 1
  %26 = inttoptr i64 %25 to ptr
  %27 = icmp ugt ptr %26, inttoptr (i64 99 to ptr)
  store ptr %26, ptr %storemerge3.reg2mem, align 8
  br i1 %27, label %dec_label_pc_38c91, label %dec_label_pc_38c56

dec_label_pc_38c91:                               ; preds = %dec_label_pc_38c56
  %28 = load ptr, ptr %stack_var_-456, align 8
  %29 = load i32, ptr %28, align 4
  call void @printIntLine(i32 %29)
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %1, %30
  br i1 %31, label %dec_label_pc_38cb6, label %dec_label_pc_38cb1

dec_label_pc_38cb1:                               ; preds = %dec_label_pc_38c91
  call void @__stack_chk_fail()
  br label %dec_label_pc_38cb6

dec_label_pc_38cb6:                               ; preds = %dec_label_pc_38cb1, %dec_label_pc_38c91
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

