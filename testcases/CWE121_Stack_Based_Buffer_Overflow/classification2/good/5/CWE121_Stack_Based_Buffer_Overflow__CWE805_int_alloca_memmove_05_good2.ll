@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32
@global_var_e6058 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4aa8d:
  %0 = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %1 = load ptr, ptr %0, align 8
  %data_-456 = alloca ptr, align 8
  %2 = ptrtoint ptr %data_-456 to i64
  %3 = call i64 @__readfsqword(i64 40)
  store i64 %2, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4aadb

dec_label_pc_4aadb:                               ; preds = %dec_label_pc_4aadb, %dec_label_pc_4aa8d
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %4 = icmp eq i64 %rsp.0.reload, %2
  %5 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_4aaf2, label %dec_label_pc_4aadb

dec_label_pc_4aaf2:                               ; preds = %dec_label_pc_4aadb
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %6 = sub i64 %2, %constexpr1
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_4ab62

dec_label_pc_4ab62:                               ; preds = %dec_label_pc_4ab62, %dec_label_pc_4aaf2
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %6
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_4ab79, label %dec_label_pc_4ab62

dec_label_pc_4ab79:                               ; preds = %dec_label_pc_4ab62
  %9 = load i32, ptr @global_var_e6058, align 4
  %10 = icmp eq i32 %9, 0
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 416
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %11 = add i64 %6, %constexpr5
  %12 = and i64 %11, -16
  %13 = inttoptr i64 %12 to ptr
  %14 = select i1 %10, ptr %1, ptr %13
  %15 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %15, i64 0, i64 50)
  %16 = bitcast ptr %14 to ptr
  %17 = call ptr @memmove(ptr %16, ptr nonnull %stack_var_-424, i32 400)
  %18 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %3, %19
  br i1 %20, label %dec_label_pc_4ac2b, label %dec_label_pc_4ac26

dec_label_pc_4ac26:                               ; preds = %dec_label_pc_4ab79
  call void @__stack_chk_fail()
  br label %dec_label_pc_4ac2b

dec_label_pc_4ac2b:                               ; preds = %dec_label_pc_4ac26, %dec_label_pc_4ab79
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

