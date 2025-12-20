@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8376a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 10)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = bitcast ptr %stack_var_-24 to ptr
  %3 = call i64 @anon1(ptr nonnull %2)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_837bc, label %dec_label_pc_837b7

dec_label_pc_837b7:                               ; preds = %dec_label_pc_8376a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_837bc

dec_label_pc_837bc:                               ; preds = %dec_label_pc_837b7, %dec_label_pc_8376a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_83822:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = add i32 %2, 1
  %4 = bitcast ptr %arg1 to ptr
  %5 = call ptr @memcpy(ptr %4, ptr nonnull %stack_var_-27, i32 %3)
  %6 = bitcast ptr %arg1 to ptr
  call void @printLine(ptr %6)
  %7 = icmp eq ptr %arg1, null
  br i1 %7, label %dec_label_pc_838a6, label %dec_label_pc_8389a

dec_label_pc_8389a:                               ; preds = %dec_label_pc_83822
  %8 = ptrtoint ptr %stack_var_-27 to i64
  %9 = and i64 %8, 4294967288
  %10 = inttoptr i64 %9 to ptr
  call void @_ZdaPv(ptr %4, ptr %10)
  br label %dec_label_pc_838a6

dec_label_pc_838a6:                               ; preds = %dec_label_pc_8389a, %dec_label_pc_83822
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_838bb, label %dec_label_pc_838b6

dec_label_pc_838b6:                               ; preds = %dec_label_pc_838a6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_838bb

dec_label_pc_838bb:                               ; preds = %dec_label_pc_838b6, %dec_label_pc_838a6
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

