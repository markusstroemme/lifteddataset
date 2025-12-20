@global_var_1000 = external global i32
@global_var_fff = external global i32
@global_var_89060 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2a355:
  %.reg2mem = alloca ptr, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-80 = alloca ptr, align 8
  %data_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_2a39e

dec_label_pc_2a39e:                               ; preds = %dec_label_pc_2a39e, %dec_label_pc_2a355
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_2a3b5, label %dec_label_pc_2a39e

dec_label_pc_2a3b5:                               ; preds = %dec_label_pc_2a39e
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %data_-88, align 8
  %7 = bitcast ptr %stack_var_-80 to ptr
  store i64 %5, ptr %7, align 8
  %8 = load i32, ptr @global_var_89060, align 4
  %9 = icmp eq i32 %8, 0
  store ptr %6, ptr %.reg2mem, align 8
  br i1 %9, label %dec_label_pc_2a425, label %dec_label_pc_2a404

dec_label_pc_2a404:                               ; preds = %dec_label_pc_2a3b5
  %10 = inttoptr i64 %5 to ptr
  %11 = call ptr @memset(ptr %10, i32 65, i32 49)
  %12 = add i64 %5, 49
  %13 = inttoptr i64 %12 to ptr
  store i8 0, ptr %13, align 1
  %.pre = load ptr, ptr %stack_var_-80, align 8
  store ptr %.pre, ptr %.reg2mem, align 8
  br label %dec_label_pc_2a425

dec_label_pc_2a425:                               ; preds = %dec_label_pc_2a404, %dec_label_pc_2a3b5
  %.reload = load ptr, ptr %.reg2mem, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %14 = bitcast ptr %stack_var_-72 to ptr
  %15 = call ptr @strcpy(ptr nonnull %14, ptr %.reload)
  call void @printLine(ptr %.reload)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_2a48f, label %dec_label_pc_2a48a

dec_label_pc_2a48a:                               ; preds = %dec_label_pc_2a425
  call void @__stack_chk_fail()
  br label %dec_label_pc_2a48f

dec_label_pc_2a48f:                               ; preds = %dec_label_pc_2a48a, %dec_label_pc_2a425
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

