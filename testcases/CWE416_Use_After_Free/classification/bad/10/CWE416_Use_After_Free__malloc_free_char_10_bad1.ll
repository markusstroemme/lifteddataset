@global_var_630a8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_685c:
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_68dc, label %dec_label_pc_687a

dec_label_pc_687a:                                ; preds = %dec_label_pc_685c
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_68c6, label %dec_label_pc_688f

dec_label_pc_688f:                                ; preds = %dec_label_pc_687a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_68c6:                                ; preds = %dec_label_pc_687a
  %5 = call ptr @memset(ptr %2, i32 65, i32 99)
  %6 = ptrtoint ptr %2 to i64
  %7 = add i64 %6, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  call void @free(ptr %2)
  %.pr = load i32, ptr @global_var_630a8, align 4
  %9 = icmp eq i32 %.pr, 0
  br i1 %9, label %dec_label_pc_68dc, label %dec_label_pc_68d0

dec_label_pc_68d0:                                ; preds = %dec_label_pc_68c6
  %10 = bitcast ptr %2 to ptr
  call void @printLine(ptr %10)
  br label %dec_label_pc_68dc

dec_label_pc_68dc:                                ; preds = %dec_label_pc_685c, %dec_label_pc_68d0, %dec_label_pc_68c6
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

