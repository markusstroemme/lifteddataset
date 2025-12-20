@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32
@global_var_e6058 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4a73c:
  %0 = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %1 = load ptr, ptr %0, align 8
  %data_-456 = alloca ptr, align 8
  %2 = ptrtoint ptr %data_-456 to i64
  %3 = call i64 @__readfsqword(i64 40)
  store i64 %2, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4a78a

dec_label_pc_4a78a:                               ; preds = %dec_label_pc_4a78a, %dec_label_pc_4a73c
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %4 = icmp eq i64 %rsp.0.reload, %2
  %5 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_4a7a1, label %dec_label_pc_4a78a

dec_label_pc_4a7a1:                               ; preds = %dec_label_pc_4a78a
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %6 = sub i64 %2, %constexpr1
  %7 = add i64 %6, 15
  %8 = and i64 %7, -16
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_4a811

dec_label_pc_4a811:                               ; preds = %dec_label_pc_4a811, %dec_label_pc_4a7a1
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %9 = icmp eq i64 %rsp.1.reload, %6
  %10 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %10, ptr %rsp.1.reg2mem, align 8
  br i1 %9, label %dec_label_pc_4a828, label %dec_label_pc_4a811

dec_label_pc_4a828:                               ; preds = %dec_label_pc_4a811
  %11 = inttoptr i64 %8 to ptr
  %12 = load i32, ptr @global_var_e6058, align 4
  %13 = icmp eq i32 %12, 0
  %spec.select = select i1 %13, ptr %1, ptr %11
  %14 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %14, i64 0, i64 50)
  %15 = bitcast ptr %spec.select to ptr
  %16 = call ptr @memmove(ptr %15, ptr nonnull %stack_var_-424, i32 400)
  %17 = load i32, ptr %spec.select, align 4
  call void @printIntLine(i32 %17)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %3, %18
  br i1 %19, label %dec_label_pc_4a8da, label %dec_label_pc_4a8d5

dec_label_pc_4a8d5:                               ; preds = %dec_label_pc_4a828
  call void @__stack_chk_fail()
  br label %dec_label_pc_4a8da

dec_label_pc_4a8da:                               ; preds = %dec_label_pc_4a8d5, %dec_label_pc_4a828
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

