@global_var_fff = external global ptr
@global_var_b7b13 = external constant [21 x i8]
@global_var_bb9a8 = external constant [4 x i8]
@global_var_e6094 = external local_unnamed_addr global i32
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4d516:
  %.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %data_-456 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-456 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4d564

dec_label_pc_4d564:                               ; preds = %dec_label_pc_4d564, %dec_label_pc_4d516
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4d57b, label %dec_label_pc_4d564

dec_label_pc_4d57b:                               ; preds = %dec_label_pc_4d564
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_4d5eb

dec_label_pc_4d5eb:                               ; preds = %dec_label_pc_4d5eb, %dec_label_pc_4d57b
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_4d602, label %dec_label_pc_4d5eb

dec_label_pc_4d602:                               ; preds = %dec_label_pc_4d5eb
  %7 = load i32, ptr @global_var_e6094, align 4
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %dec_label_pc_4d65e, label %dec_label_pc_4d64d

dec_label_pc_4d64d:                               ; preds = %dec_label_pc_4d602
  call void @printLine(ptr @global_var_b7b13)
  br label %dec_label_pc_4d66c

dec_label_pc_4d65e:                               ; preds = %dec_label_pc_4d602
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 416
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %9 = add i64 %4, %constexpr5
  %10 = and i64 %9, -16
  %11 = inttoptr i64 %10 to ptr
  store ptr %11, ptr %.reg2mem, align 8
  br label %dec_label_pc_4d66c

dec_label_pc_4d66c:                               ; preds = %dec_label_pc_4d65e, %dec_label_pc_4d64d
  %.reload = load ptr, ptr %.reg2mem, align 8
  %12 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %12, i64 0, i64 50)
  %13 = bitcast ptr %.reload to ptr
  %14 = call ptr @memmove(ptr %13, ptr nonnull %stack_var_-424, i32 400)
  %15 = load i32, ptr %.reload, align 4
  call void @printIntLine(i32 %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_4d6c6, label %dec_label_pc_4d6c1

dec_label_pc_4d6c1:                               ; preds = %dec_label_pc_4d66c
  call void @__stack_chk_fail()
  br label %dec_label_pc_4d6c6

dec_label_pc_4d6c6:                               ; preds = %dec_label_pc_4d6c1, %dec_label_pc_4d66c
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9cb1b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9cb3e, label %dec_label_pc_9cb32

dec_label_pc_9cb32:                               ; preds = %dec_label_pc_9cb1b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9cb3e

dec_label_pc_9cb3e:                               ; preds = %dec_label_pc_9cb32, %dec_label_pc_9cb1b
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

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

