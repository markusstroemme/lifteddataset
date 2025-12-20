@global_var_fff = external global ptr
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2baf7:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-80 = alloca ptr, align 8
  %data_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_2bb40

dec_label_pc_2bb40:                               ; preds = %dec_label_pc_2bb40, %dec_label_pc_2baf7
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_2bb57, label %dec_label_pc_2bb40

dec_label_pc_2bb57:                               ; preds = %dec_label_pc_2bb40
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
  %8 = inttoptr i64 %5 to ptr
  %9 = call ptr @memset(ptr %8, i32 65, i32 49)
  %10 = add i64 %5, 49
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  store i64 0, ptr %stack_var_-72, align 8
  %12 = load ptr, ptr %stack_var_-80, align 8
  %13 = call i32 @strlen(ptr %12)
  %14 = bitcast ptr %stack_var_-72 to ptr
  %15 = call ptr @strncpy(ptr nonnull %14, ptr %12, i32 %13)
  call void @printLine(ptr %12)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_2bc54, label %dec_label_pc_2bc4f

dec_label_pc_2bc4f:                               ; preds = %dec_label_pc_2bb57
  call void @__stack_chk_fail()
  br label %dec_label_pc_2bc54

dec_label_pc_2bc54:                               ; preds = %dec_label_pc_2bc4f, %dec_label_pc_2bb57
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

