@global_var_4a4f0 = external constant [21 x i8]
@global_var_4a95b = external constant [6 x i8]
@0 = external global i32
@global_var_63074 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2dabc:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_63074, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_2daec, label %dec_label_pc_2dadb

dec_label_pc_2dadb:                               ; preds = %dec_label_pc_2dabc
  call void @printLine(ptr @global_var_4a4f0)
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_2db01

dec_label_pc_2daec:                               ; preds = %dec_label_pc_2dabc
  %2 = call i64 @_Znwm(i64 1)
  %3 = inttoptr i64 %2 to ptr
  store i8 65, ptr %3, align 1
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_2db01

dec_label_pc_2db01:                               ; preds = %dec_label_pc_2daec, %dec_label_pc_2dadb
  %4 = load i32, ptr @global_var_63074, align 4
  %5 = zext i32 %4 to i64
  %6 = icmp eq i32 %4, 5
  %7 = icmp eq i1 %6, false
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_2db1d, label %dec_label_pc_2db0c

dec_label_pc_2db0c:                               ; preds = %dec_label_pc_2db01
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %8 = load i8, ptr %stack_var_-16.0.reload, align 1
  call void @printHexCharLine(i8 %8)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2db1d

dec_label_pc_2db1d:                               ; preds = %dec_label_pc_2db0c, %dec_label_pc_2db01
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_3b981:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a95b, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

