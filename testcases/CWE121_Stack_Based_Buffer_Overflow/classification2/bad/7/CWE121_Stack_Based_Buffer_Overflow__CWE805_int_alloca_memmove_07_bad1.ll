@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32
@global_var_e605c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4b15c:
  %0 = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %1 = load ptr, ptr %0, align 8
  %data_-456 = alloca ptr, align 8
  %2 = ptrtoint ptr %data_-456 to i64
  %3 = call i64 @__readfsqword(i64 40)
  store i64 %2, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4b1aa

dec_label_pc_4b1aa:                               ; preds = %dec_label_pc_4b1aa, %dec_label_pc_4b15c
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %4 = icmp eq i64 %rsp.0.reload, %2
  %5 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_4b1c1, label %dec_label_pc_4b1aa

dec_label_pc_4b1c1:                               ; preds = %dec_label_pc_4b1aa
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %6 = sub i64 %2, %constexpr1
  %7 = add i64 %6, 15
  %8 = and i64 %7, -16
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_4b231

dec_label_pc_4b231:                               ; preds = %dec_label_pc_4b231, %dec_label_pc_4b1c1
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %9 = icmp eq i64 %rsp.1.reload, %6
  %10 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %10, ptr %rsp.1.reg2mem, align 8
  br i1 %9, label %dec_label_pc_4b248, label %dec_label_pc_4b231

dec_label_pc_4b248:                               ; preds = %dec_label_pc_4b231
  %11 = inttoptr i64 %8 to ptr
  %12 = load i32, ptr @global_var_e605c, align 4
  %13 = icmp eq i32 %12, 5
  %14 = icmp eq i1 %13, false
  %spec.select = select i1 %14, ptr %1, ptr %11
  %15 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %15, i64 0, i64 50)
  %16 = bitcast ptr %spec.select to ptr
  %17 = call ptr @memmove(ptr %16, ptr nonnull %stack_var_-424, i32 400)
  %18 = load i32, ptr %spec.select, align 4
  call void @printIntLine(i32 %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %3, %19
  br i1 %20, label %dec_label_pc_4b2fb, label %dec_label_pc_4b2f6

dec_label_pc_4b2f6:                               ; preds = %dec_label_pc_4b248
  call void @__stack_chk_fail()
  br label %dec_label_pc_4b2fb

dec_label_pc_4b2fb:                               ; preds = %dec_label_pc_4b2f6, %dec_label_pc_4b248
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

