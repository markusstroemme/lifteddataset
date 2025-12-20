@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_8e7f9:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = add i32 %2, 1
  %4 = call ptr @strncpy(ptr %arg1, ptr nonnull %1, i32 %3)
  call void @printLine(ptr %arg1)
  %5 = icmp eq ptr %arg1, null
  br i1 %5, label %dec_label_pc_8e872, label %dec_label_pc_8e866

dec_label_pc_8e866:                               ; preds = %dec_label_pc_8e7f9
  %6 = ptrtoint ptr %stack_var_-27 to i64
  %7 = bitcast ptr %arg1 to ptr
  %8 = and i64 %6, 4294967288
  %9 = inttoptr i64 %8 to ptr
  call void @_ZdaPv(ptr %7, ptr %9)
  br label %dec_label_pc_8e872

dec_label_pc_8e872:                               ; preds = %dec_label_pc_8e866, %dec_label_pc_8e7f9
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_8e887, label %dec_label_pc_8e882

dec_label_pc_8e882:                               ; preds = %dec_label_pc_8e872
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8e887

dec_label_pc_8e887:                               ; preds = %dec_label_pc_8e882, %dec_label_pc_8e872
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_8e889:
  %0 = call i64 @_Znam(i64 10)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @anon0(ptr %1)
  ret i64 %2
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

