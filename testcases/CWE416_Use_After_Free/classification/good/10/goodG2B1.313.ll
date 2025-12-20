@global_var_49a94 = external constant [21 x i8]
@global_var_630a8 = external local_unnamed_addr global i32
@global_var_63100 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_69d2:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_63100, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_6a01, label %dec_label_pc_69f0

dec_label_pc_69f0:                                ; preds = %dec_label_pc_69d2
  call void @printLine(ptr @global_var_49a94)
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_6a41

dec_label_pc_6a01:                                ; preds = %dec_label_pc_69d2
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_6a20, label %dec_label_pc_6a16

dec_label_pc_6a16:                                ; preds = %dec_label_pc_6a01
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6a20:                                ; preds = %dec_label_pc_6a01
  %5 = bitcast ptr %2 to ptr
  %6 = call ptr @memset(ptr %2, i32 65, i32 99)
  %7 = ptrtoint ptr %2 to i64
  %8 = add i64 %7, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_6a41

dec_label_pc_6a41:                                ; preds = %dec_label_pc_6a20, %dec_label_pc_69f0
  %10 = load i32, ptr @global_var_630a8, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %dec_label_pc_6a57, label %dec_label_pc_6a4b

dec_label_pc_6a4b:                                ; preds = %dec_label_pc_6a41
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  call void @printLine(ptr %stack_var_-16.0.reload)
  br label %dec_label_pc_6a57

dec_label_pc_6a57:                                ; preds = %dec_label_pc_6a4b, %dec_label_pc_6a41
  ret void
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

