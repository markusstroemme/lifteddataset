@global_var_1000 = external global i32
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_23bd2:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-104 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-104 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_23c1b

dec_label_pc_23c1b:                               ; preds = %dec_label_pc_23c1b, %dec_label_pc_23bd2
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_23cab, label %dec_label_pc_23c1b

dec_label_pc_23cab:                               ; preds = %dec_label_pc_23c1b
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  %7 = add i64 %5, 49
  %8 = inttoptr i64 %7 to ptr
  %9 = call ptr @memset(ptr %6, i32 65, i32 49)
  store i8 0, ptr %8, align 1
  %10 = inttoptr i64 %5 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %11 = bitcast ptr %stack_var_-72 to ptr
  %12 = call ptr @strcat(ptr nonnull %11, ptr %10)
  call void @printLine(ptr %10)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %1, %13
  br i1 %14, label %dec_label_pc_23d15, label %dec_label_pc_23d10

dec_label_pc_23d10:                               ; preds = %dec_label_pc_23cab
  call void @__stack_chk_fail()
  br label %dec_label_pc_23d15

dec_label_pc_23d15:                               ; preds = %dec_label_pc_23d10, %dec_label_pc_23cab
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

