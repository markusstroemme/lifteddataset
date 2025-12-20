@0 = external global i32
@global_var_5b120 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_25935:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @global_var_5b120, align 4
  %1 = call i64 @anon1(ptr null)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = inttoptr i64 %1 to ptr
  %4 = bitcast ptr %stack_var_-120 to ptr
  %5 = call ptr @strcpy(ptr %3, ptr nonnull %4)
  call void @printLine(ptr %3)
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %dec_label_pc_259be, label %dec_label_pc_259b2

dec_label_pc_259b2:                               ; preds = %dec_label_pc_25935
  %7 = ptrtoint ptr %stack_var_-120 to i64
  %8 = inttoptr i64 %1 to ptr
  %9 = and i64 %7, 4294967288
  %10 = inttoptr i64 %9 to ptr
  call void @_ZdaPv(ptr %8, ptr %10)
  br label %dec_label_pc_259be

dec_label_pc_259be:                               ; preds = %dec_label_pc_259b2, %dec_label_pc_25935
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_259d3, label %dec_label_pc_259ce

dec_label_pc_259ce:                               ; preds = %dec_label_pc_259be
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_259d3

dec_label_pc_259d3:                               ; preds = %dec_label_pc_259ce, %dec_label_pc_259be
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_25b2a:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_5b120, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %arg1, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_25b59, label %dec_label_pc_25b44

dec_label_pc_25b44:                               ; preds = %dec_label_pc_25b2a
  %2 = call i64 @_Znam(i64 50)
  %3 = inttoptr i64 %2 to ptr
  store i8 0, ptr %3, align 1
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_25b59

dec_label_pc_25b59:                               ; preds = %dec_label_pc_25b44, %dec_label_pc_25b2a
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %4 = ptrtoint ptr %stack_var_-16.0.reload to i64
  ret i64 %4
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

