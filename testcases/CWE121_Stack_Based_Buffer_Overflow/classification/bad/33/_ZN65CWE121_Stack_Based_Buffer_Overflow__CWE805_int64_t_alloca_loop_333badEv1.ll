@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9b5 = external constant [5 x i8]
@0 = external global i32
@global_var_1000 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_78dab:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-872 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-872 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_78e07

dec_label_pc_78e07:                               ; preds = %dec_label_pc_78e07, %dec_label_pc_78dab
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_78e1e, label %dec_label_pc_78e07

dec_label_pc_78e1e:                               ; preds = %dec_label_pc_78e07
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
  br label %dec_label_pc_78e8e

dec_label_pc_78e8e:                               ; preds = %dec_label_pc_78e8e, %dec_label_pc_78e1e
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_78ea5, label %dec_label_pc_78e8e

dec_label_pc_78ea5:                               ; preds = %dec_label_pc_78e8e
  %8 = ptrtoint ptr %stack_var_-8 to i64
  %9 = add i64 %4, 15
  %10 = and i64 %9, -16
  store i64 %10, ptr %stack_var_-872, align 8
  %11 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %11, i64 0, i64 100)
  %12 = add i64 %8, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_78f28

dec_label_pc_78f28:                               ; preds = %dec_label_pc_78f28, %dec_label_pc_78ea5
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %13 = mul i64 %storemerge1.reload, 8
  %14 = add i64 %13, %10
  %15 = add i64 %12, %13
  %16 = inttoptr i64 %15 to ptr
  %17 = load i64, ptr %16, align 8
  %18 = inttoptr i64 %14 to ptr
  store i64 %17, ptr %18, align 8
  %19 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %19, 100
  store i64 %19, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_78f65, label %dec_label_pc_78f28

dec_label_pc_78f65:                               ; preds = %dec_label_pc_78f28
  %20 = inttoptr i64 %10 to ptr
  %21 = load i64, ptr %20, align 16
  call void @printLongLongLine(i64 %21)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %1, %22
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_78f8c, label %dec_label_pc_78f87

dec_label_pc_78f87:                               ; preds = %dec_label_pc_78f65
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_78f8c

dec_label_pc_78f8c:                               ; preds = %dec_label_pc_78f87, %dec_label_pc_78f65
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

