@global_var_33be8 = external constant [21 x i8]
@global_var_34bd9 = external constant [5 x i8]
@global_var_4c088 = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_8db1:
  %stack_var_-16.0.in.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_4c088, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_8ddc, label %dec_label_pc_8dcb

dec_label_pc_8dcb:                                ; preds = %dec_label_pc_8db1
  call void @printLine(ptr @global_var_33be8)
  store ptr %data, ptr %stack_var_-16.0.in.reg2mem, align 8
  br label %dec_label_pc_8e06

dec_label_pc_8ddc:                                ; preds = %dec_label_pc_8db1
  %2 = call ptr @malloc(i32 8)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_8dfb, label %dec_label_pc_8df1

dec_label_pc_8df1:                                ; preds = %dec_label_pc_8ddc
  call void @exit(i32 -1)
  unreachable

dec_label_pc_8dfb:                                ; preds = %dec_label_pc_8ddc
  store i64 2147483643, ptr %2, align 8
  store ptr %2, ptr %stack_var_-16.0.in.reg2mem, align 8
  br label %dec_label_pc_8e06

dec_label_pc_8e06:                                ; preds = %dec_label_pc_8dfb, %dec_label_pc_8dcb
  %stack_var_-16.0.in.reload = load ptr, ptr %stack_var_-16.0.in.reg2mem, align 8
  ret ptr %stack_var_-16.0.in.reload
}

define void @anon1() local_unnamed_addr {
dec_label_pc_8e0c:
  store i32 0, ptr @global_var_4c088, align 4
  %0 = call ptr @anon0(ptr null)
  %1 = load i64, ptr %0, align 8
  call void @printLongLongLine(i64 %1)
  call void @free(ptr %0)
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_2b879:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_2b89c, label %dec_label_pc_2b890

dec_label_pc_2b890:                               ; preds = %dec_label_pc_2b879
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_2b89c

dec_label_pc_2b89c:                               ; preds = %dec_label_pc_2b890, %dec_label_pc_2b879
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_2b997:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_34bd9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

