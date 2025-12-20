@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon1() local_unnamed_addr {
dec_label_pc_17d18:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_17d5c, label %dec_label_pc_17d52

dec_label_pc_17d52:                               ; preds = %dec_label_pc_17d18
  call void @exit(i32 -1)
  unreachable

dec_label_pc_17d5c:                               ; preds = %dec_label_pc_17d18
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_17d7d, label %dec_label_pc_17d78

dec_label_pc_17d78:                               ; preds = %dec_label_pc_17d5c
  call void @__stack_chk_fail()
  br label %dec_label_pc_17d7d

dec_label_pc_17d7d:                               ; preds = %dec_label_pc_17d78, %dec_label_pc_17d5c
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_17e37:
  %0 = ptrtoint ptr %dataPtr to i64
  %stack_var_-824 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 100)
  %3 = bitcast ptr %dataPtr to ptr
  %4 = call ptr @memcpy(ptr %3, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printLongLongLine(i64 %0)
  call void @free(ptr %3)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  br i1 %6, label %dec_label_pc_17ed8, label %dec_label_pc_17ed3

dec_label_pc_17ed3:                               ; preds = %dec_label_pc_17e37
  call void @__stack_chk_fail()
  br label %dec_label_pc_17ed8

dec_label_pc_17ed8:                               ; preds = %dec_label_pc_17ed3, %dec_label_pc_17e37
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_658c4:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c82d, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

