@global_var_832bc = external constant [21 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc028 = external local_unnamed_addr global i32
@global_var_bc140 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1635e:
  %stack_var_-24.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_bc140, align 4
  %1 = icmp eq i32 %0, 0
  store i64 3, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_16395, label %dec_label_pc_1637c

dec_label_pc_1637c:                               ; preds = %dec_label_pc_1635e
  call void @printLine(ptr @global_var_832bc)
  store i64 1, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_16395

dec_label_pc_16395:                               ; preds = %dec_label_pc_1635e, %dec_label_pc_1637c
  %2 = load i32, ptr @global_var_bc028, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_163b8, label %dec_label_pc_1639f

dec_label_pc_1639f:                               ; preds = %dec_label_pc_16395
  %stack_var_-24.0.reload = load i64, ptr %stack_var_-24.0.reg2mem, align 8
  call void @printLongLongLine(i64 %stack_var_-24.0.reload)
  br label %dec_label_pc_163b8

dec_label_pc_163b8:                               ; preds = %dec_label_pc_1639f, %dec_label_pc_16395
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

