@0 = external global i32
@global_var_dc294 = external local_unnamed_addr global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_81a83:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_dc294, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %arg1, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_81aab, label %dec_label_pc_81a9d

dec_label_pc_81a9d:                               ; preds = %dec_label_pc_81a83
  %2 = call i64 @_Znam(i64 11)
  %3 = inttoptr i64 %2 to ptr
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_81aab

dec_label_pc_81aab:                               ; preds = %dec_label_pc_81a9d, %dec_label_pc_81a83
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %4 = ptrtoint ptr %stack_var_-16.0.reload to i64
  ret i64 %4
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_81ab1:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @global_var_dc294, align 4
  %1 = call i64 @anon0(ptr null)
  %2 = inttoptr i64 %1 to ptr
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %3 = bitcast ptr %stack_var_-27 to ptr
  %4 = call i32 @strlen(ptr nonnull %3)
  %5 = add i32 %4, 1
  %6 = inttoptr i64 %1 to ptr
  %7 = call ptr @memcpy(ptr %6, ptr nonnull %stack_var_-27, i32 %5)
  call void @printLine(ptr %2)
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %dec_label_pc_81b48, label %dec_label_pc_81b3c

dec_label_pc_81b3c:                               ; preds = %dec_label_pc_81ab1
  %9 = ptrtoint ptr %stack_var_-27 to i64
  %10 = and i64 %9, 4294967288
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %6, ptr %11)
  br label %dec_label_pc_81b48

dec_label_pc_81b48:                               ; preds = %dec_label_pc_81b3c, %dec_label_pc_81ab1
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_81b5d, label %dec_label_pc_81b58

dec_label_pc_81b58:                               ; preds = %dec_label_pc_81b48
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_81b5d

dec_label_pc_81b5d:                               ; preds = %dec_label_pc_81b58, %dec_label_pc_81b48
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

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

