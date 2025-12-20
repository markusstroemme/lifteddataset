@global_var_43d7c = external constant [21 x i8]
@0 = external global i32
@global_var_5b02c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_19b71:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_5b02c, align 4
  %2 = icmp eq i32 %1, 5
  br i1 %2, label %dec_label_pc_19bb0, label %dec_label_pc_19b9f

dec_label_pc_19b9f:                               ; preds = %dec_label_pc_19b71
  call void @printLine(ptr @global_var_43d7c)
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_19bc5

dec_label_pc_19bb0:                               ; preds = %dec_label_pc_19b71
  %3 = call i64 @_Znam(i64 100)
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  store ptr %4, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_19bc5

dec_label_pc_19bc5:                               ; preds = %dec_label_pc_19bb0, %dec_label_pc_19b9f
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = bitcast ptr %stack_var_-120 to ptr
  %7 = call ptr @strcat(ptr %stack_var_-128.0.reload, ptr nonnull %6)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %8 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %8, label %dec_label_pc_19c11, label %dec_label_pc_19c05

dec_label_pc_19c05:                               ; preds = %dec_label_pc_19bc5
  %9 = ptrtoint ptr %stack_var_-120 to i64
  %10 = bitcast ptr %stack_var_-128.0.reload to ptr
  %11 = and i64 %9, 4294967288
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %10, ptr %12)
  br label %dec_label_pc_19c11

dec_label_pc_19c11:                               ; preds = %dec_label_pc_19c05, %dec_label_pc_19bc5
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_19c26, label %dec_label_pc_19c21

dec_label_pc_19c21:                               ; preds = %dec_label_pc_19c11
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_19c26

dec_label_pc_19c26:                               ; preds = %dec_label_pc_19c21, %dec_label_pc_19c11
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_37b38:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_37b5b, label %dec_label_pc_37b4f

dec_label_pc_37b4f:                               ; preds = %dec_label_pc_37b38
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_37b5b

dec_label_pc_37b5b:                               ; preds = %dec_label_pc_37b4f, %dec_label_pc_37b38
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

