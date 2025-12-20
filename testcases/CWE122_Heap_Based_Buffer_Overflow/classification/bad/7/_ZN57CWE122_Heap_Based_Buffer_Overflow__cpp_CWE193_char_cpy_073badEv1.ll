@0 = external global i32
@global_var_dc05c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_6ee3d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_dc05c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-40.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_6ee79, label %dec_label_pc_6ee6b

dec_label_pc_6ee6b:                               ; preds = %dec_label_pc_6ee3d
  %4 = call i64 @_Znam(i64 10)
  %5 = inttoptr i64 %4 to ptr
  store ptr %5, ptr %stack_var_-40.0.reg2mem, align 8
  br label %dec_label_pc_6ee79

dec_label_pc_6ee79:                               ; preds = %dec_label_pc_6ee6b, %dec_label_pc_6ee3d
  %stack_var_-40.0.reload = load ptr, ptr %stack_var_-40.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %6 = bitcast ptr %stack_var_-27 to ptr
  %7 = call ptr @strcpy(ptr %stack_var_-40.0.reload, ptr nonnull %6)
  call void @printLine(ptr %stack_var_-40.0.reload)
  %8 = icmp eq ptr %stack_var_-40.0.reload, null
  br i1 %8, label %dec_label_pc_6eec3, label %dec_label_pc_6eeb7

dec_label_pc_6eeb7:                               ; preds = %dec_label_pc_6ee79
  %9 = ptrtoint ptr %stack_var_-27 to i64
  %10 = bitcast ptr %stack_var_-40.0.reload to ptr
  %11 = and i64 %9, 4294967288
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %10, ptr %12)
  br label %dec_label_pc_6eec3

dec_label_pc_6eec3:                               ; preds = %dec_label_pc_6eeb7, %dec_label_pc_6ee79
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_6eed8, label %dec_label_pc_6eed3

dec_label_pc_6eed3:                               ; preds = %dec_label_pc_6eec3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6eed8

dec_label_pc_6eed8:                               ; preds = %dec_label_pc_6eed3, %dec_label_pc_6eec3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

