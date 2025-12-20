@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_15c3f:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %dataPtr1_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataPtr1_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_15c98

dec_label_pc_15c98:                               ; preds = %dec_label_pc_15c98, %dec_label_pc_15c3f
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_15caf, label %dec_label_pc_15c98

dec_label_pc_15caf:                               ; preds = %dec_label_pc_15c98
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_15d1a

dec_label_pc_15d1a:                               ; preds = %dec_label_pc_15d1a, %dec_label_pc_15caf
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_15d31, label %dec_label_pc_15d1a

dec_label_pc_15d31:                               ; preds = %dec_label_pc_15d1a
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  %10 = bitcast ptr %dataPtr1_-88 to ptr
  store i64 %8, ptr %10, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %11 = bitcast ptr %stack_var_-27 to ptr
  %12 = call i32 @strlen(ptr nonnull %11)
  %13 = add i32 %12, 1
  %14 = inttoptr i64 %8 to ptr
  %15 = call ptr @memcpy(ptr %14, ptr nonnull %stack_var_-27, i32 %13)
  call void @printLine(ptr %9)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_15dfa, label %dec_label_pc_15df5

dec_label_pc_15df5:                               ; preds = %dec_label_pc_15d31
  call void @__stack_chk_fail()
  br label %dec_label_pc_15dfa

dec_label_pc_15dfa:                               ; preds = %dec_label_pc_15df5, %dec_label_pc_15d31
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

