@global_var_b09b3 = external constant [21 x i8]
@0 = external global i32
@global_var_dc348 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_6f4f4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_dc348, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_6f532, label %dec_label_pc_6f521

dec_label_pc_6f521:                               ; preds = %dec_label_pc_6f4f4
  call void @printLine(ptr @global_var_b09b3)
  store ptr null, ptr %stack_var_-40.0.reg2mem, align 8
  br label %dec_label_pc_6f540

dec_label_pc_6f532:                               ; preds = %dec_label_pc_6f4f4
  %3 = call i64 @_Znam(i64 11)
  %4 = inttoptr i64 %3 to ptr
  store ptr %4, ptr %stack_var_-40.0.reg2mem, align 8
  br label %dec_label_pc_6f540

dec_label_pc_6f540:                               ; preds = %dec_label_pc_6f532, %dec_label_pc_6f521
  %stack_var_-40.0.reload = load ptr, ptr %stack_var_-40.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %5 = bitcast ptr %stack_var_-27 to ptr
  %6 = call ptr @strcpy(ptr %stack_var_-40.0.reload, ptr nonnull %5)
  call void @printLine(ptr %stack_var_-40.0.reload)
  %7 = icmp eq ptr %stack_var_-40.0.reload, null
  br i1 %7, label %dec_label_pc_6f58a, label %dec_label_pc_6f57e

dec_label_pc_6f57e:                               ; preds = %dec_label_pc_6f540
  %8 = ptrtoint ptr %stack_var_-27 to i64
  %9 = bitcast ptr %stack_var_-40.0.reload to ptr
  %10 = and i64 %8, 4294967288
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %9, ptr %11)
  br label %dec_label_pc_6f58a

dec_label_pc_6f58a:                               ; preds = %dec_label_pc_6f57e, %dec_label_pc_6f540
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_6f59f, label %dec_label_pc_6f59a

dec_label_pc_6f59a:                               ; preds = %dec_label_pc_6f58a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6f59f

dec_label_pc_6f59f:                               ; preds = %dec_label_pc_6f59a, %dec_label_pc_6f58a
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

