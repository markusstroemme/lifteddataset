@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@0 = external global i32
@global_var_1000 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8696d:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-472 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-472 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_869c9

dec_label_pc_869c9:                               ; preds = %dec_label_pc_869c9, %dec_label_pc_8696d
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_869e0, label %dec_label_pc_869c9

dec_label_pc_869e0:                               ; preds = %dec_label_pc_869c9
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_86a50

dec_label_pc_86a50:                               ; preds = %dec_label_pc_86a50, %dec_label_pc_869e0
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_86a67, label %dec_label_pc_86a50

dec_label_pc_86a67:                               ; preds = %dec_label_pc_86a50
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %8 = add i64 %4, 15
  %9 = and i64 %8, -16
  store i64 %9, ptr %stack_var_-472, align 8
  %10 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %10, i64 0, i64 50)
  %11 = add i64 %7, -416
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_86aea

dec_label_pc_86aea:                               ; preds = %dec_label_pc_86aea, %dec_label_pc_86a67
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %12 = mul i64 %storemerge2.reload, 4
  %13 = add i64 %12, %9
  %14 = add i64 %11, %12
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = inttoptr i64 %13 to ptr
  store i32 %16, ptr %17, align 4
  %18 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %18, 100
  store i64 %18, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_86b25, label %dec_label_pc_86aea

dec_label_pc_86b25:                               ; preds = %dec_label_pc_86aea
  %19 = inttoptr i64 %9 to ptr
  %20 = load i32, ptr %19, align 16
  call void @printIntLine(i32 %20)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %1, %21
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %22, label %dec_label_pc_86b4a, label %dec_label_pc_86b45

dec_label_pc_86b45:                               ; preds = %dec_label_pc_86b25
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_86b4a

dec_label_pc_86b4a:                               ; preds = %dec_label_pc_86b45, %dec_label_pc_86b25
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

