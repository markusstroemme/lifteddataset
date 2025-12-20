@global_var_523ac = external constant [21 x i8]
@0 = external global i32
@global_var_6c158 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_29478:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_6c158, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_294b6, label %dec_label_pc_294a5

dec_label_pc_294a5:                               ; preds = %dec_label_pc_29478
  call void @printLine(ptr @global_var_523ac)
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_294cb

dec_label_pc_294b6:                               ; preds = %dec_label_pc_29478
  %3 = call i64 @_Znam(i64 100)
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  store ptr %4, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_294cb

dec_label_pc_294cb:                               ; preds = %dec_label_pc_294b6, %dec_label_pc_294a5
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = bitcast ptr %stack_var_-120 to ptr
  %7 = call ptr @strncpy(ptr %stack_var_-128.0.reload, ptr nonnull %6, i32 99)
  %8 = ptrtoint ptr %stack_var_-128.0.reload to i64
  %9 = add i64 %8, 99
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  call void @printLine(ptr %stack_var_-128.0.reload)
  %11 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %11, label %dec_label_pc_29527, label %dec_label_pc_2951b

dec_label_pc_2951b:                               ; preds = %dec_label_pc_294cb
  %12 = ptrtoint ptr %stack_var_-120 to i64
  %13 = bitcast ptr %stack_var_-128.0.reload to ptr
  %14 = and i64 %12, 4294967288
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %13, ptr %15)
  br label %dec_label_pc_29527

dec_label_pc_29527:                               ; preds = %dec_label_pc_2951b, %dec_label_pc_294cb
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_2953c, label %dec_label_pc_29537

dec_label_pc_29537:                               ; preds = %dec_label_pc_29527
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2953c

dec_label_pc_2953c:                               ; preds = %dec_label_pc_29537, %dec_label_pc_29527
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_42e40:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_42e63, label %dec_label_pc_42e57

dec_label_pc_42e57:                               ; preds = %dec_label_pc_42e40
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_42e63

dec_label_pc_42e63:                               ; preds = %dec_label_pc_42e57, %dec_label_pc_42e40
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

