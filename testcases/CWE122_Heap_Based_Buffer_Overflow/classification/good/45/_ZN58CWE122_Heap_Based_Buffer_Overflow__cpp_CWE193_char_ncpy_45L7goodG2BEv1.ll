@0 = external global i32
@global_var_dc330 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8ef43:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_dc330, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = add i32 %3, 1
  %5 = call ptr @strncpy(ptr %1, ptr nonnull %2, i32 %4)
  call void @printLine(ptr %1)
  %6 = icmp eq ptr %1, null
  br i1 %6, label %dec_label_pc_8efc3, label %dec_label_pc_8efb7

dec_label_pc_8efb7:                               ; preds = %dec_label_pc_8ef43
  %7 = ptrtoint ptr %stack_var_-27 to i64
  %8 = bitcast ptr %1 to ptr
  %9 = and i64 %7, 4294967288
  %10 = inttoptr i64 %9 to ptr
  call void @_ZdaPv(ptr %8, ptr %10)
  br label %dec_label_pc_8efc3

dec_label_pc_8efc3:                               ; preds = %dec_label_pc_8efb7, %dec_label_pc_8ef43
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_8efd8, label %dec_label_pc_8efd3

dec_label_pc_8efd3:                               ; preds = %dec_label_pc_8efc3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8efd8

dec_label_pc_8efd8:                               ; preds = %dec_label_pc_8efd3, %dec_label_pc_8efc3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_8efda:
  %0 = call i64 @_Znam(i64 11)
  %1 = inttoptr i64 %0 to ptr
  store ptr %1, ptr @global_var_dc330, align 8
  %2 = call i64 @anon0()
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

