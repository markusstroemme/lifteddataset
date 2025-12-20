@staticFive = external local_unnamed_addr global i32
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8c6bf:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @staticFive, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-40.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_8c6fb, label %dec_label_pc_8c6ed

dec_label_pc_8c6ed:                               ; preds = %dec_label_pc_8c6bf
  %4 = call i64 @_Znam(i64 11)
  %5 = inttoptr i64 %4 to ptr
  store ptr %5, ptr %stack_var_-40.0.reg2mem, align 8
  br label %dec_label_pc_8c6fb

dec_label_pc_8c6fb:                               ; preds = %dec_label_pc_8c6ed, %dec_label_pc_8c6bf
  %stack_var_-40.0.reload = load ptr, ptr %stack_var_-40.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %6 = bitcast ptr %stack_var_-27 to ptr
  %7 = call i32 @strlen(ptr nonnull %6)
  %8 = add i32 %7, 1
  %9 = call ptr @strncpy(ptr %stack_var_-40.0.reload, ptr nonnull %6, i32 %8)
  call void @printLine(ptr %stack_var_-40.0.reload)
  %10 = icmp eq ptr %stack_var_-40.0.reload, null
  br i1 %10, label %dec_label_pc_8c755, label %dec_label_pc_8c749

dec_label_pc_8c749:                               ; preds = %dec_label_pc_8c6fb
  %11 = ptrtoint ptr %stack_var_-27 to i64
  %12 = bitcast ptr %stack_var_-40.0.reload to ptr
  %13 = and i64 %11, 4294967288
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  br label %dec_label_pc_8c755

dec_label_pc_8c755:                               ; preds = %dec_label_pc_8c749, %dec_label_pc_8c6fb
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_8c76a, label %dec_label_pc_8c765

dec_label_pc_8c765:                               ; preds = %dec_label_pc_8c755
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8c76a

dec_label_pc_8c76a:                               ; preds = %dec_label_pc_8c765, %dec_label_pc_8c755
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

