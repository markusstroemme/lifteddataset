@global_var_49a55 = external constant [21 x i8]
@global_var_63014 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_6094:
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_63014, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  br i1 %2, label %dec_label_pc_60ff, label %dec_label_pc_60b3

dec_label_pc_60b3:                                ; preds = %dec_label_pc_6094
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_60d2, label %dec_label_pc_60c8

dec_label_pc_60c8:                                ; preds = %dec_label_pc_60b3
  call void @exit(i32 -1)
  unreachable

dec_label_pc_60d2:                                ; preds = %dec_label_pc_60b3
  %6 = ptrtoint ptr %3 to i64
  %7 = call ptr @memset(ptr %3, i32 65, i32 99)
  %8 = add i64 %6, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  call void @free(ptr %3)
  %.pr = load i32, ptr @global_var_63014, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_60ff

dec_label_pc_60ff:                                ; preds = %dec_label_pc_60d2, %dec_label_pc_6094
  %.reload = load i32, ptr %.reg2mem, align 4
  %10 = icmp eq i32 %.reload, 5
  br i1 %10, label %dec_label_pc_6119, label %dec_label_pc_610a

dec_label_pc_610a:                                ; preds = %dec_label_pc_60ff
  call void @printLine(ptr @global_var_49a55)
  br label %dec_label_pc_6119

dec_label_pc_6119:                                ; preds = %dec_label_pc_610a, %dec_label_pc_60ff
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

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

