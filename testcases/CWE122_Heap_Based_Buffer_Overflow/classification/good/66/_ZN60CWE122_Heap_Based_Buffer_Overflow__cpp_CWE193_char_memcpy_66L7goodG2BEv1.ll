@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_83d5c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 11)
  %2 = bitcast ptr %stack_var_-56 to ptr
  %3 = call i64 @anon1(ptr nonnull %2)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_83db6, label %dec_label_pc_83db1

dec_label_pc_83db1:                               ; preds = %dec_label_pc_83d5c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_83db6

dec_label_pc_83db6:                               ; preds = %dec_label_pc_83db1, %dec_label_pc_83d5c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_83e64:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  %stack_var_-27 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %5 = bitcast ptr %stack_var_-27 to ptr
  %6 = call i32 @strlen(ptr nonnull %5)
  %7 = add i32 %6, 1
  %8 = inttoptr i64 %4 to ptr
  %9 = call ptr @memcpy(ptr %8, ptr nonnull %stack_var_-27, i32 %7)
  %10 = inttoptr i64 %4 to ptr
  call void @printLine(ptr %10)
  %11 = icmp eq i64 %4, 0
  br i1 %11, label %dec_label_pc_83ee9, label %dec_label_pc_83edd

dec_label_pc_83edd:                               ; preds = %dec_label_pc_83e64
  %12 = ptrtoint ptr %stack_var_-27 to i64
  %13 = and i64 %12, 4294967288
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %8, ptr %14)
  br label %dec_label_pc_83ee9

dec_label_pc_83ee9:                               ; preds = %dec_label_pc_83edd, %dec_label_pc_83e64
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_83efe, label %dec_label_pc_83ef9

dec_label_pc_83ef9:                               ; preds = %dec_label_pc_83ee9
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_83efe

dec_label_pc_83efe:                               ; preds = %dec_label_pc_83ef9, %dec_label_pc_83ee9
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

