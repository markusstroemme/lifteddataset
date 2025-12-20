@global_var_fff = external global ptr
@global_var_1000 = external global i32
@global_var_b401c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_134ed:
  %.reg2mem = alloca ptr, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-80 = alloca ptr, align 8
  %data_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_13536

dec_label_pc_13536:                               ; preds = %dec_label_pc_13536, %dec_label_pc_134ed
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1354d, label %dec_label_pc_13536

dec_label_pc_1354d:                               ; preds = %dec_label_pc_13536
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
  %8 = load i32, ptr @global_var_b401c, align 4
  %9 = icmp eq i32 %8, 5
  %10 = icmp eq i1 %9, false
  store ptr %6, ptr %.reg2mem, align 8
  br i1 %10, label %dec_label_pc_135be, label %dec_label_pc_1359d

dec_label_pc_1359d:                               ; preds = %dec_label_pc_1354d
  %11 = inttoptr i64 %5 to ptr
  %12 = call ptr @memset(ptr %11, i32 65, i32 99)
  %13 = add i64 %5, 99
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 1
  %.pre = load ptr, ptr %stack_var_-80, align 8
  store ptr %.pre, ptr %.reg2mem, align 8
  br label %dec_label_pc_135be

dec_label_pc_135be:                               ; preds = %dec_label_pc_1359d, %dec_label_pc_1354d
  %.reload = load ptr, ptr %.reg2mem, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %15 = call i32 @strlen(ptr %.reload)
  %16 = bitcast ptr %.reload to ptr
  %17 = call ptr @memcpy(ptr nonnull %stack_var_-72, ptr %16, i32 %15)
  call void @printLine(ptr %.reload)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_1363b, label %dec_label_pc_13636

dec_label_pc_13636:                               ; preds = %dec_label_pc_135be
  call void @__stack_chk_fail()
  br label %dec_label_pc_1363b

dec_label_pc_1363b:                               ; preds = %dec_label_pc_13636, %dec_label_pc_135be
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

