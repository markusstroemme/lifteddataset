@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_85ca3:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 11)
  %2 = inttoptr i64 %1 to ptr
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %3 = bitcast ptr %stack_var_-27 to ptr
  %4 = call i32 @strlen(ptr nonnull %3)
  %5 = add i32 %4, 1
  %6 = inttoptr i64 %1 to ptr
  %7 = call ptr @memmove(ptr %6, ptr nonnull %stack_var_-27, i32 %5)
  call void @printLine(ptr %2)
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %dec_label_pc_85d2e, label %dec_label_pc_85d22

dec_label_pc_85d22:                               ; preds = %dec_label_pc_85ca3
  %9 = ptrtoint ptr %stack_var_-27 to i64
  %10 = and i64 %9, 4294967288
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %6, ptr %11)
  br label %dec_label_pc_85d2e

dec_label_pc_85d2e:                               ; preds = %dec_label_pc_85d22, %dec_label_pc_85ca3
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_85d43, label %dec_label_pc_85d3e

dec_label_pc_85d3e:                               ; preds = %dec_label_pc_85d2e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_85d43

dec_label_pc_85d43:                               ; preds = %dec_label_pc_85d3e, %dec_label_pc_85d2e
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

