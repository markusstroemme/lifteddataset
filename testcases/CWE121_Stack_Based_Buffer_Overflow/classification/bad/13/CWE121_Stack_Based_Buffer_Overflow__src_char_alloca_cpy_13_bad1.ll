@global_var_1000 = external global i32
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2ab7b:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-80 = alloca ptr, align 8
  %data_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_2abc4

dec_label_pc_2abc4:                               ; preds = %dec_label_pc_2abc4, %dec_label_pc_2ab7b
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_2abdb, label %dec_label_pc_2abc4

dec_label_pc_2abdb:                               ; preds = %dec_label_pc_2abc4
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
  %9 = call ptr @memset(ptr %8, i32 65, i32 99)
  %10 = add i64 %5, 99
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  store i64 0, ptr %stack_var_-72, align 8
  %12 = load ptr, ptr %stack_var_-80, align 8
  %13 = bitcast ptr %stack_var_-72 to ptr
  %14 = call ptr @strcpy(ptr nonnull %13, ptr %12)
  call void @printLine(ptr %12)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_2acb6, label %dec_label_pc_2acb1

dec_label_pc_2acb1:                               ; preds = %dec_label_pc_2abdb
  call void @__stack_chk_fail()
  br label %dec_label_pc_2acb6

dec_label_pc_2acb6:                               ; preds = %dec_label_pc_2acb1, %dec_label_pc_2abdb
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

