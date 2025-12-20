@global_var_fff = external global ptr
@global_var_90eef = external constant [3 x i8]
@global_var_1000 = external global i32
@global_var_b4074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_36b81:
  %.reg2mem = alloca ptr, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-80 = alloca ptr, align 8
  %data_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_36bca

dec_label_pc_36bca:                               ; preds = %dec_label_pc_36bca, %dec_label_pc_36b81
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_36be1, label %dec_label_pc_36bca

dec_label_pc_36be1:                               ; preds = %dec_label_pc_36bca
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
  %8 = load i32, ptr @global_var_b4074, align 4
  %9 = icmp eq i32 %8, 5
  %10 = icmp eq i1 %9, false
  store ptr %6, ptr %.reg2mem, align 8
  br i1 %10, label %dec_label_pc_36c52, label %dec_label_pc_36c31

dec_label_pc_36c31:                               ; preds = %dec_label_pc_36be1
  %11 = inttoptr i64 %5 to ptr
  %12 = call ptr @memset(ptr %11, i32 65, i32 49)
  %13 = add i64 %5, 49
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 1
  %.pre = load ptr, ptr %stack_var_-80, align 8
  store ptr %.pre, ptr %.reg2mem, align 8
  br label %dec_label_pc_36c52

dec_label_pc_36c52:                               ; preds = %dec_label_pc_36c31, %dec_label_pc_36be1
  %.reload = load ptr, ptr %.reg2mem, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %15 = call i32 @strlen(ptr %.reload)
  %16 = bitcast ptr %stack_var_-72 to ptr
  %17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %16, i32 %15, ptr @global_var_90eef, ptr %.reload)
  call void @printLine(ptr %.reload)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_36cd7, label %dec_label_pc_36cd2

dec_label_pc_36cd2:                               ; preds = %dec_label_pc_36c52
  call void @__stack_chk_fail()
  br label %dec_label_pc_36cd7

dec_label_pc_36cd7:                               ; preds = %dec_label_pc_36cd2, %dec_label_pc_36c52
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

