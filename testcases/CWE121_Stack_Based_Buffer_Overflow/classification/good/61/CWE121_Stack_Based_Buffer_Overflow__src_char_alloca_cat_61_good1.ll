@global_var_1000 = external global i32
@global_var_fff = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_26b19:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %data_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_26b62

dec_label_pc_26b62:                               ; preds = %dec_label_pc_26b62, %dec_label_pc_26b19
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_26b79, label %dec_label_pc_26b62

dec_label_pc_26b79:                               ; preds = %dec_label_pc_26b62
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %data_-88, align 8
  %7 = call ptr @anon0(ptr %6)
  store i64 0, ptr %stack_var_-72, align 8
  %8 = bitcast ptr %stack_var_-72 to ptr
  %9 = call ptr @strcat(ptr nonnull %8, ptr %7)
  call void @printLine(ptr %7)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_26c38, label %dec_label_pc_26c33

dec_label_pc_26c33:                               ; preds = %dec_label_pc_26b79
  call void @__stack_chk_fail()
  br label %dec_label_pc_26c38

dec_label_pc_26c38:                               ; preds = %dec_label_pc_26c33, %dec_label_pc_26b79
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_26c86:
  %0 = ptrtoint ptr %data to i64
  %1 = bitcast ptr %data to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret ptr %data
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

