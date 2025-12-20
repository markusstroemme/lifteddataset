@global_var_49a25 = external constant [21 x i8]
@global_var_63010 = external local_unnamed_addr global i32
@global_var_630b4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5b42:
  %0 = load i32, ptr @global_var_63010, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_5bac, label %dec_label_pc_5b60

dec_label_pc_5b60:                                ; preds = %dec_label_pc_5b42
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_5b7f, label %dec_label_pc_5b75

dec_label_pc_5b75:                                ; preds = %dec_label_pc_5b60
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5b7f:                                ; preds = %dec_label_pc_5b60
  %5 = ptrtoint ptr %2 to i64
  %6 = call ptr @memset(ptr %2, i32 65, i32 99)
  %7 = add i64 %5, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  call void @free(ptr %2)
  br label %dec_label_pc_5bac

dec_label_pc_5bac:                                ; preds = %dec_label_pc_5b7f, %dec_label_pc_5b42
  %9 = load i32, ptr @global_var_630b4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %dec_label_pc_5bc5, label %dec_label_pc_5bb6

dec_label_pc_5bb6:                                ; preds = %dec_label_pc_5bac
  call void @printLine(ptr @global_var_49a25)
  br label %dec_label_pc_5bc5

dec_label_pc_5bc5:                                ; preds = %dec_label_pc_5bb6, %dec_label_pc_5bac
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

