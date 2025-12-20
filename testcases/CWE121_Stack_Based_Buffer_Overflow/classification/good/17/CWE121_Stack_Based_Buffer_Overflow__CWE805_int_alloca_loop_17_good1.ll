@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3bd0d:
  %storemerge3.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %dataBadBuffer_-456 = alloca ptr, align 8
  %stack_var_-472 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-472 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3bd5b

dec_label_pc_3bd5b:                               ; preds = %dec_label_pc_3bd5b, %dec_label_pc_3bd0d
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3bd72, label %dec_label_pc_3bd5b

dec_label_pc_3bd72:                               ; preds = %dec_label_pc_3bd5b
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3bde2

dec_label_pc_3bde2:                               ; preds = %dec_label_pc_3bde2, %dec_label_pc_3bd72
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3bdf9, label %dec_label_pc_3bde2

dec_label_pc_3bdf9:                               ; preds = %dec_label_pc_3bde2
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 416
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %8 = add i64 %4, %constexpr5
  %9 = and i64 %8, -16
  %10 = bitcast ptr %dataBadBuffer_-456 to ptr
  store i64 %9, ptr %10, align 8
  %11 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %11, i64 0, i64 50)
  %12 = add i64 %7, -416
  %13 = inttoptr i64 %9 to ptr
  store ptr %13, ptr %.reg2mem, align 8
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_3be87

dec_label_pc_3be87:                               ; preds = %dec_label_pc_3be87, %dec_label_pc_3bdf9
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %.reload = load ptr, ptr %.reg2mem, align 8
  %14 = ptrtoint ptr %storemerge3.reload to i64
  %15 = mul i64 %14, 4
  %16 = ptrtoint ptr %.reload to i64
  %17 = add i64 %15, %16
  %18 = add i64 %12, %15
  %19 = inttoptr i64 %18 to ptr
  %20 = load i32, ptr %19, align 4
  %21 = inttoptr i64 %17 to ptr
  store i32 %20, ptr %21, align 4
  %22 = add i64 %14, 1
  %23 = inttoptr i64 %22 to ptr
  %24 = icmp ugt ptr %23, inttoptr (i64 99 to ptr)
  %25 = load ptr, ptr %dataBadBuffer_-456, align 8
  store ptr %25, ptr %.reg2mem, align 8
  store ptr %23, ptr %storemerge3.reg2mem, align 8
  br i1 %24, label %dec_label_pc_3bec2, label %dec_label_pc_3be87

dec_label_pc_3bec2:                               ; preds = %dec_label_pc_3be87
  %26 = load i32, ptr %25, align 4
  call void @printIntLine(i32 %26)
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %1, %27
  br i1 %28, label %dec_label_pc_3bee7, label %dec_label_pc_3bee2

dec_label_pc_3bee2:                               ; preds = %dec_label_pc_3bec2
  call void @__stack_chk_fail()
  br label %dec_label_pc_3bee7

dec_label_pc_3bee7:                               ; preds = %dec_label_pc_3bee2, %dec_label_pc_3bec2
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

